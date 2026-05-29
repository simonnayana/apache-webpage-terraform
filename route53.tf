data "aws_route53_zone" "selected" {
  name         = var.zone_name
  private_zone = var.zone_private
}

resource "aws_route53_record" "apache" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = var.record_name
  type    = "A"
  ttl     = 300
  records = [aws_instance.apache.private_ip]
}
