resource "aws_route53_resolver_endpoint" "main" {
  name      = "xxxx"
  direction = var.direction

  security_group_ids = [
    aws_security_group.main.id,
  ]

#   ip_address {
#     subnet_id = ""
#     ip        = "10.0.0.5"
#   }
}
