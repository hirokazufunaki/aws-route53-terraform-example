# ------- Alias Record -------
variable "hosted_zone_id" {
  type        = string
  description = "レコードが作成されるホストゾーンのID"
}

variable "record_name" {
  type        = string
  description = "レコード名"
}

variable "alias_name" {
  type        = string
  description = "ターゲットリソース（ELB、GlobalAcceleratorなど）のDNS名"
}

variable "alias_zone_id" {
  type        = string
  description = "ターゲットリソースのホストゾーンのID"
}

variable "alias_evaluate_target_health" {
  type        = bool
  description = "ターゲットリソースのヘルスチェックを行うかどうかを設定"
  default     = true
}
