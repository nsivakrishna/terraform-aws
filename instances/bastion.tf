resource "aws_instance" "bastion" {
  ami = "${lookup(var.amis, var.region)}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "bastion_instances_2a_${var.env}"
  }
  subnet_id = "${var.public_subnet_id}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${var.bastion_ssh_sg_id}"]
  key_name = "${var.key_name}"
}

resource "aws_eip" "bastion" {
  instance = "${aws_instance.bastion.id}"
  vpc = true
}


resource "aws_instance" "bastion1" {
  ami = "${lookup(var.amis, var.region)}"
  instance_type = "${var.instance_type}"
  tags = {
    Name = "bastion_instances_2b_${var.env}"
  }
  subnet_id = "${var.public_subnet_id1}"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${var.bastion_ssh_sg_id}"]
  key_name = "${var.key_name}"
}

resource "aws_eip" "bastion1" {
  instance = "${aws_instance.bastion1.id}"
  vpc = true
}