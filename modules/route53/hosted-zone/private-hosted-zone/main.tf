resource "aws_route53_zone" "private" {
  name = var.hosted_zone_name

  vpc {
    vpc_id = var.vpc_id
  }
}

# プライベートホストゾーンを他のVPCに関連付けるための許可を与える
# このリソースはVPC関連付けの許可を与えるだけで、VPCの関連付けは行いません。
# VPCを関連付けするには、VPCが存在するアカウントにて関連付け作業が必要です。
# この関連付けはAWSコンソールからは作業できないため、zone-association モジュールを使用して行います。
# 参考：https://docs.aws.amazon.com/ja_jp/Route53/latest/DeveloperGuide/hosted-zone-private-associate-vpcs-different-accounts.html
resource "aws_route53_vpc_association_authorization" "target" {
  for_each = toset(var.association_target_vpc_ids)

  zone_id = aws_route53_zone.private.zone_id
  vpc_id  = each.key
}
