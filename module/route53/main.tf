resource "aws_route53_zone" "private_zone" {
  name = var.domain
  vpc {
    vpc_id = var.vpc_id
  }
}

resource "aws_route53_record" "internal_alb_dns" {
  zone_id = aws_route53_zone.private_zone.zone_id
  name    = "${var.subdomain}.${var.domain}"
  type    = var.record_type
  ttl     = "300"
  records = [var.internal_alb_dns]
}
