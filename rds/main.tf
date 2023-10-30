provider "aws" {
  region = "ap-southeast-1" # Singapore region
}

resource "aws_db_instance" "fww-db" {
  allocated_storage   = 20
  engine              = "postgres"
  engine_version      = "14.7"
  db_name             = "fww_core"
  instance_class      = "db.t3.micro"
  username            = "fwwdev"
  password            = "u5Mb2pbiUpqh3VA"
  skip_final_snapshot = true

  tags = {
    Name  = "fww-db"
    Group = "prodigybe"
  }
}
