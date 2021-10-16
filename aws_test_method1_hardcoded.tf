terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "SomeKeythatwasgeneratedbyAWS"
  secret_key = "SomeKeyThatWasGeneratedbyAWSwhichisdifferentfromabove"
}

resource "aws_instance" "web" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"

  tags = {
    Name = "NeverStopLearning"
  }
}
