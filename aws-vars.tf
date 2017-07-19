//AWS client key to provision to AWS
variable "access_key" {
    type = "string"
}
//AWS client secret to provision to AWS
variable "secret_key" {
    type = "string"
}

//AWS region to deploy to
variable "region" {
    type = "string"
}

variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pub
DESCRIPTION
}


variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-b1cf19c6"
    us-east-1 = "ami-bc0926aa"
    us-west-1 = "ami-3f75767a"
    us-west-2 = "ami-21f78e11"
  }
}

