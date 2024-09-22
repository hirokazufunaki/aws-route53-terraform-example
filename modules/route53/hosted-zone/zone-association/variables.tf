variable "hosted_zone_id" {
  type        = string
  description = "VPCに関連付けるホストゾーンのID"
}

variable "vpc_id" {
  type        = string
  description = "ホストゾーンを関連付けるVPCのID"
}
