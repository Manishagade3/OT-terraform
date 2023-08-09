resource "aws_security_group" "web" {
  name        = "web"
  description = "Allow inbound and outbound traffic for web tier"
  vpc_id      = aws_vpc.main.id
}

resource "aws_security_group_rule" "ingress_web_rules" {
  count = length(var.ports)

  security_group_id = aws_security_group.web.id

  type        = "ingress"
  from_port   = var.ports[count.index]
  to_port     = var.ports[count.index]
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "egress_web_rules" {
  count = length(var.ports)

  security_group_id = aws_security_group.web.id

  type        = "egress"
  from_port   = var.ports[count.index]
  to_port     = var.ports[count.index]
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}
