output "name" {
  value = aws_route53_zone.private.name
}

output "zone_id" {
  value = aws_route53_zone.private.zone_id
}

output "name_servers" {
  value = aws_route53_zone.private.name_servers
}
