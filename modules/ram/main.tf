resource "aws_ram_resource_share" "main" {
  name                      = ""
  allow_external_principals = true
}

resource "aws_ram_resource_association" "main" {
  resource_arn       = "resolver_rule_arn"
  resource_share_arn = aws_ram_resource_share.main.arn
}

resource "aws_ram_principal_association" "main" {
  principal          = target_account_id
  resource_share_arn = aws_ram_resource_share.main.arn
}
