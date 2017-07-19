provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "example" {
  ami           = "ami-a60c23b0"
  instance_type = "t2.micro"
}