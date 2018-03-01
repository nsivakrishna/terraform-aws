variable "region" {
  default = "us-west-2"
}
variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
variable "availability_zones" {
  # No spaces allowed between az names!
  default = "us-west-2a,us-west-2b,us-west-2c"
}
variable "key_name" {
  default = "siva"
}
variable "env" {
  default = "prod"
}


variable "instance_type" {
  default = "t2.nano"
}
variable "countnginx" {
default              = "2"
 # description = "Number of nginx VMs"
}
variable "countapp" {
default                = "2"
  #description = "Number of application VMs"
}
variable "countredis" {
default              = "1"    
  # description = "Number of redis VM"
}

variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "5"
}
variable "asg_desired" {
  default = "2"
}
# Amazon Linux AMI
# Most recent as of 2015-12-02
variable "amis" {
  default = {
    us-west-2 = "ami-79873901"
  }
}
variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "15.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "15.0.0.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default = "15.0.1.0/24"
}

