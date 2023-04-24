//different types of variables provided by the terraform - 
//1. string -It will hold string values
//2. number - It will hold number values
//3. bool   - It will hold boolean value .i.e. true, false
//4. list   - It is used for the collection of values. Collection can be of type string, number
//5. map    - When you need to create key-value pair then need to use map variable type

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

provider "aws" {}

// create EC2 instance
resource "aws_instance" "ec2_example" {

   ami           = var.AMI_ID
   instance_type =  var.instance_type
   count = var.instance_count
   associate_public_ip_address = var.enable_public_ip

   tags = var.project_environment
        
}

// create iam user 
resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}

