resource "aws_route53_record" "a" {
  zone_id = var.hosted_zone_id
  name    = var.record_name
  type    = "A"
  ttl     = var.ttl
  records = var.records
}
