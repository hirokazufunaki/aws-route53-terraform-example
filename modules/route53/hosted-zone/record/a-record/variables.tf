# ------- A Record -------
variable "hosted_zone_id" {
  type        = string
  description = "レコードが作成されるホストゾーンのID"
}

variable "record_name" {
  type        = string
  description = "レコード名"
}

variable "ttl" {
  type        = number
  description = "レコードのTTL（秒）。特に指定がない場合はデフォルト値（300秒）を使用してください。"
  default     = 300
}

variable "records" {
  type        = list(string)
  description = "ルーティング先のIPアドレスのリスト"
}
