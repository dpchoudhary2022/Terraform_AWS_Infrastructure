variable "AMI_ID" {
  description = "ami id used"
  default = "ami-0c768662cc797cd75"
  type = string

}
// create variable for instance type
// string variable used here:
variable "instance_type" {
  description = "instance type t2.micro"
  type = string
  default = "t2.micro"
}

//create variable for number of instance//howmany instance we needed
// count variable used here:
variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 1
}  

//boolean variable type
//can be used to set true or false values inside your terraform file.
variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

// create list variable 
variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}

//Map variable type
//Terraform also supports the map variable type where we can 
//define the key-value pair.
variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    project     = "project-devops",
    environment = "dev"
  }
}


