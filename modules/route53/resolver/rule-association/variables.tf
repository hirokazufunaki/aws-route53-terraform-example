variable "resolver_rule_id" {
  type        = string
  description = "VPCに関連付ける転送ルールのID"
}

variable "vpc_id" {
  type        = string
  description = "転送ルールを関連付けるVPCのID"
}
