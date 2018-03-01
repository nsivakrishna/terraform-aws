variable "availability_zones" {
  # No spaces allowed between az names!
  default = ["us-west-2a"]
}

variable "availability_zones1" {
  # No spaces allowed between az names!
  default = ["us-west-2b"]
}

variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "2"
}
variable "env" {
  default = "prod"
}
#
# From other modules
#
variable "public_subnet_id" {}
variable "private_subnet_id" {}
variable "private_subnet_id1" {}
variable "webapp_lc_id" {}
variable "webapp_lc_name" {}
variable "webapp_elb_name" {}
variable "webapp_lc_id1" {}
variable "webapp_lc_name1" {}
variable "webapp_elb_name1" {}

