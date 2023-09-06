terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  ## ami id below is specific for this region
  region = "us-west-2"
}

resource "aws_instance" "delete_me" {
  # ami           = "ami-830c94e3"  ## changed to:
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name    = "ExampleAppServerInstance"
    PROJECT = "TEMP"
    TODO    = "DELETE"
  }
}
