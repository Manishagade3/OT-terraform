resource "tls_private_key" "OT-key" {
  algorithm = "RSA"
}

resource "local_file" "ssh_key" {
  filename = "${aws_key_pair.OT-key.key_name}.pem"
  content = tls_private_key.OT-key.private_key_pem
}

resource "aws_key_pair" "OT-key" {
  key_name   = "OT-key"
  public_key = tls_private_key.OT-key.public_key_openssh
}

resource "aws_instance" "bastion" {
  ami           = var.bation_ami  
  instance_type = var.bastion_instance_type
  subnet_id     = var.public_subnet_1
  security_groups = [var.security_group]
  key_name      = aws_key_pair.OT-key.key_name
  associate_public_ip_address = true 
  
  
}
