resource "aws_instance" "redis_server_instance" {
  count               = "${var.countredis}"
  ami = "${lookup(var.amis, var.region)}"
  instance_type = "${var.instance_type}"
  tags = {
    Name =  "redis-server%_${var.env}"
  }
  subnet_id = "${var.private_subnet_id}"
  vpc_security_group_ids = [
    "${var.ssh_from_bastion_sg_id}",
    "${var.web_access_from_nat_sg_id}"
    ]
  key_name = "${var.key_name}"
}
