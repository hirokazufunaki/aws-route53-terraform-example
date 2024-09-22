# オンプレ環境の DNS キャッシュサーバに DNS クエリを転送するためのルールを VPC に関連付けて、名前解決をできるようにします。
# 事前に RAM で Route 53 Resolver の転送ルールを共有してもらい、承認しておく必要があります。
resource "aws_route53_resolver_rule_association" "main" {
  resolver_rule_id = var.resolver_rule_id
  vpc_id           = var.vpc_id
}
