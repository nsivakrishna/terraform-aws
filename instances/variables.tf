
variable "region" {
  default = "us-west-2"
}

variable "env" {
  default = "prod"
}

variable "key_name" {}
variable "instance_type" {
  default = "t2.small"
}
# Amazon Linux AMI
# Most recent as of 2015-12-02
variable "amis" {
  default = {
    us-west-2 = "ami-79873901"
  }
}
#
# From other modules
#
variable "public_subnet_id" {}
variable "public_subnet_id1" {}
variable "bastion_ssh_sg_id" {}
variable "private_subnet_id" {}
variable "private_subnet_id1" {}
variable "ssh_from_bastion_sg_id" {}
variable "web_access_from_nat_sg_id" {}

variable "countnginx" {
default              = "2"
  #description = "Number of nginx VMs"
}
variable "countapp" {
default                = "2"
  #description = "Number of application VMs"
}
variable "countredis" {
default              = "1"    
  #description = "Number of redis VM"
}


