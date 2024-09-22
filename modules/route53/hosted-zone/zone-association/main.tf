# 他の VPC のプライベートホストゾーンを VPC に関連付けて、名前解決をできるようにします。
# 事前に aws_route53_vpc_association_authorization リソースで VPC 関連付けの許可をしてもらう必要があります。
resource "aws_route53_zone_association" "main" {
  zone_id = var.hosted_zone_id
  vpc_id  = var.vpc_id
}
