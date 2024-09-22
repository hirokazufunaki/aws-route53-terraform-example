variable "rule_name" {
  type = string
}

variable "domain_name" {
  type = string
}

variable "rule_type" {
  type = string
}

variable "target_ips" {
  type = list(string)
}

variable "outbound_endpoint_id" {
  type = string
}