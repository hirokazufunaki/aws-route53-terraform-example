variable "direction" {
  type = string

  validation {
    condition     = var.direction == "INBOUND" || var.direction == "OUTBOUND"
    error_message = "The direction variable must be either 'INBOUND' or 'OUTBOUND'."
  }
}
