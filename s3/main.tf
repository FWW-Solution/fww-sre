provider "aws" {
  region = "ap-southeast-1" # Singapore region
}

resource "aws_s3_bucket" "example" {
  bucket = "fww-bucket"
  tags = {
    Name  = "fww-bucket"
    Group = "prodigybe"
  }
}
