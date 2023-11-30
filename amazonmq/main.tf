
provider "aws" {
  region = "ap-southeast-1" # Singapore region
}
# BEGIN: Amazon MQ Configuration
resource "aws_mq_broker" "rabbitmq_broker" {
  broker_name        = "my-rabbitmq-broker"
  engine_type        = "RabbitMQ"
  engine_version     = "3.11.20"
  host_instance_type = "mq.t3.micro"
  user {
    username = "rabbitmqadmin"
    password = "rabbitmqadmin"
  }
  tags = {
    Name  = "my-rabbitmq-broker"
    Group = "prodigybe"
  }
}

output "aws_mq_broker_rabbitmq_broker" {
  value = aws_mq_broker.rabbitmq_broker.endpoint
}
