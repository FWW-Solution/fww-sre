provider "aws" {
  region = "ap-southeast-1" # Singapore region
}

resource "tls_private_key" "terrafrom_generated_private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key_docker_stagging" {
  key_name = "aws_keys_pairs_stagging"
  # Public Key: The public will be generated using the reference of tls_private_key.terrafrom_generated_private_key
  public_key = tls_private_key.terrafrom_generated_private_key.public_key_openssh

  # Print private key pem
  provisioner "local-exec" {
    command = <<-EOT
       echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}'
     EOT
  }

  # Store private key :  Generate and save private key(aws_keys_pairs.pem) in current directory
  provisioner "local-exec" {
    command = <<-EOT
      echo '${tls_private_key.terrafrom_generated_private_key.private_key_pem}' > aws_keys_pairs_stagging.pem
       chmod 400 aws_keys_pairs_stagging.pem
     EOT
  }
}

resource "aws_instance" "deploy-docker-stagging" {
  ami           = "ami-078c1149d8ad719a7" # Ubuntu 22.04 LTS
  instance_type = "t2.medium"
  key_name      = "aws_keys_pairs_stagging"

  vpc_security_group_ids = [
    aws_security_group.deploy-docker-stagging.id
  ]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("aws_keys_pairs_stagging.pem")
    host        = self.public_ip
    timeout     = "4m"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install ca-certificates curl gnupg lsb-release -y",
      "sudo install -m 0755 -d /etc/apt/keyrings",
      "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg",
      "sudo chmod a+r /etc/apt/keyrings/docker.gpg",
      "echo \"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
      "sudo apt-get update",
      "sudo apt-get install make -y",
      "sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y",
      "sudo usermod -aG docker ubuntu",
      "git clone https://github.com/fww-solution/fww-sre.git",
      "cd fww-sre/deploy",
      "sudo chmod -R 777 local/"
    ]
  }

  tags = {
    Name  = "deploy-docker-instance-cluster-fww-stagging"
    Group = "prodigybe"
  }
}

resource "aws_security_group" "deploy-docker-stagging" {
  name_prefix = "deploy-docker-sg-"
  description = "deploy-docker security group"
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
    description = "Service Traefik"
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
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Dashboard Traefik"
  }
  ingress {
    from_port   = 8082
    to_port     = 8082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Bonita"
  }
  ingress {
    from_port   = 8084
    to_port     = 8084
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Grafana"
  }
  ingress {
    from_port   = 8086
    to_port     = 8086
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Portainer"
  }
  ingress {
    from_port   = 6379
    to_port     = 6379
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


resource "aws_apigatewayv2_api" "api-gateway-fww-solution" {
  name          = "api-gateway-fww-solution"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "stagging" {
  api_id = aws_apigatewayv2_api.api-gateway-fww-solution.id

  name        = "stagging"
  auto_deploy = true
}

resource "aws_apigatewayv2_integration" "api-gateway-fww-solution" {
  api_id = aws_apigatewayv2_api.api-gateway-fww-solution.id

  integration_type   = "HTTP_PROXY"
  integration_uri    = "http://${aws_instance.deploy-docker-stagging.public_ip}:8082/{proxy}"
  integration_method = "ANY"
  connection_type    = "INTERNET"
}

resource "aws_apigatewayv2_route" "api-gateway-fww-solution" {
  api_id = aws_apigatewayv2_api.api-gateway-fww-solution.id

  route_key = "ANY /{proxy+}"
  target    = "integrations/${aws_apigatewayv2_integration.api-gateway-fww-solution.id}"
}

output "api_gw_example_1_health_url" {
  value = "${aws_apigatewayv2_stage.stagging.invoke_url}/"
}
