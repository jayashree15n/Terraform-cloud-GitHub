terraform {
    required_version = "~> 1.2.8" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1"
        #profile = "default"
	}

resource "aws_instance" "jayainfra" {
	ami = "ami-05fa00d4c63e32376" 
	instance_type = "t3.micro"
}
