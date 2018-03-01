
variable "region" {
  default = "us-west-2"
}
variable "key_name" {}
variable "instance_type" {
  default = "t2.nano"
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
variable "webapp_http_inbound_sg_id" {}
variable "webapp_ssh_inbound_sg_id" {}
variable "webapp_outbound_sg_id" {}
