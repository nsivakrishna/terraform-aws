variable "ip_range" {
  default = "0.0.0.0/0" # Change to your IP Range!
}
variable "availability_zones" {
  # No spaces allowed between az names!
  default = ["us-west-2a"]
}
variable "availability_zones1" {
  # No spaces allowed between az names!
  default = ["us-west-2b"]
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default = "15.0.0.0/16"
}
variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default = "15.0.0.0/24"
}
variable "public_subnet_cidr1" {
  description = "CIDR for the Public Subnet"
  default = "15.0.3.0/24"
}
variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default = "15.0.1.0/24"
}
variable "private_subnet_cidr1" {
  description = "CIDR for the Private Subnet"
  default = "15.0.2.0/24"
}
variable "key_name" {}


#############################3
variable "azs" {
  default = "us-west-2a,us-west-2b"
}

variable "instance_class" {
  default = "db.t2.small"
}

variable "dbname" {
  default = "dbmaster"
}
variable "username" {
  default = "master"
}

variable "password" {
  default = "password"
}

variable "env" {
  default = "prod"
}

