# vpc variables
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type        = string
}

# security group variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instance"
  type        = string
}

# application load balancer variables
variable "ssh_certificate_arn" {
  default     = "arn:aws:acm:us-east-1:027163438717:certificate/a288fafd-7b28-407a-b164-7c5fbc21b86e"
  description = "ssl certificate arn"
  type        = string
}

# sns topic variables
variable "operator_email" {
  default     = "awsprojct@gmail.com"
  description = "a valid email address"
  type        = string
}

# auto scalling group variables
variable "launch_template_name" {
  default     = "dev-launch-template"
  description = "name of the launch template"
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-0f9a15d8648cddb72"
  description = "id of the ami"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "the ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  default     = "newproject"
  description = "name of the ec2 key pair"
  type        = string
}