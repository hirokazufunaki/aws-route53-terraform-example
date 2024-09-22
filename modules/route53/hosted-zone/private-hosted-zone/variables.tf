# ------- Private Hosted Zone -------
variable "hosted_zone_name" {
  type        = string
  description = "プライベートホストゾーンの名前"
}

variable "vpc_id" {
  type        = string
  description = "関連付けするVPCのID"
}

variable "association_target_vpc_ids" {
  type        = list(string)
  description = "プライベートホストゾーンとの関連付けを許可するVPC IDのリスト。許可する VPC がない場合は default の空のリストを使用する。"
  default     = []
}
