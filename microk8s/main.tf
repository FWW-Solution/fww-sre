provider "aws" {
  region = "ap-southeast-1" # Singapore region
}

resource "tls_private_key" "" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name = "aws_keys_pairs"
  # Public Key: The public will be generated using the reference of tls_private_key.terrafrom_generated_private_key
  public_key = tls_private_key.terrafrom_generated_private_key.public_key_openssh

  # Store private key :  Generate and save private key(aws_keys_pairs.pem) in current directory
  provisioner "local-exec" {
    command = <<-EOT
       echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > aws_keys_pairs.pem
       chmod 400 aws_keys_pairs.pem
     EOT
  }
}

resource "aws_instance" "microk8s" {
  ami           = "ami-03caf91bb3d81b843" # Ubuntu 22.04 LTS
  instance_type = "t2.medium"
  key_name      = "aws_keys_pairs"

  vpc_security_group_ids = [
    aws_security_group.microk8s.id
  ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("aws_keys_pairs.pem")
    host        = self.public_ip
    timeout     = "4m"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo snap install microk8s --classic",
      "sudo usermod -a -G microk8s ubuntu",
      "sudo chown -f -R ubuntu ~/.kube",
      "sudo microk8s enable dashboard",
      "sudo microk8s enable dns",
      "sudo microk8s enable community",
      "sudo microk8s enable linkerd", # enable service mesh and observability monitoring
      "sudo microk8s enable helm",
      "sudo snap alias microk8s.kubectl kubectl", # create alias microk8s.kubectl to kubectl
      # create alias microk8s.linkerd to linkerd
      "sudo snap alias microk8s.linkerd linkerd",
      # create alias microk8s.helm to helm
      "sudo snap alias microk8s.helm helm"
      # "linkerd check --pre",                         # check if linkerd is ready to be installed
      # "linkerd install --crds | kubectl apply -f -", # install the CRDs first
      # "linkerd install | kubectl apply -f -",        # install linkerd
      # "linkerd check",                               # check if linkerd is installed
      # "linkerd viz install | kubectl apply -f -",    # install linkerd viz
      # "linkerd viz check",                           # check if linkerd viz is installed
      # "linkerd jaeger install | kubectl apply -f -", # install linkerd jaeger
      # "linkerd jaeger check",                        # check if linkerd jaeger is installed
      # "helm repo add grafana https://grafana.github.io/helm-charts",
      # "helm install grafana -n grafana --create-namespace grafana/grafana -f https://raw.githubusercontent.com/linkerd/linkerd2/main/grafana/values.yaml",
      # "linkerd viz install --set grafana.url=grafana.grafana:3000 | kubectl apply -f -",
      # "linkerd viz dashboard &", # open linkerd dashboard
    ]
  }

  tags = {
    Name  = "microk8s-instance-cluster-fww"
    Group = "prodigybe"
  }
}

resource "aws_security_group" "microk8s" {
  name_prefix = "microk8s-sg-"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 6443
    to_port     = 6443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 30080
    to_port     = 30080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Group" = "prodigybe"
  }
}
