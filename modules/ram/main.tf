resource "aws_ram_resource_share" "main" {
  name                      = var.resource_share_name
  allow_external_principals = true
}

resource "aws_ram_resource_association" "main" {
  resource_arn       = var.shared_resource_arn
  resource_share_arn = aws_ram_resource_share.main.arn
}

resource "aws_ram_principal_association" "main" {
  principal          = var.target_account_id
  resource_share_arn = aws_ram_resource_share.main.arn
}
