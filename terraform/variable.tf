variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "ap-south-1"
}


variable "ami_id" {
  description = "The AMI to use for the EC2 instance."
  type        = string
  default     = "ami-0f918f7e67a3323f0"
}


variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t3.large"
}



variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance."
  type        = string
  default     = "quotely-key"
}



variable "instance_name" {
  description = "The name tag for the EC2 instance."
  type        = string
  default     = "QuotelyServer"
}