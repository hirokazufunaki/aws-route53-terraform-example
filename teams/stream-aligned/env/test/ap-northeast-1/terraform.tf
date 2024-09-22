terraform {
  required_version = "~> 1.9.0"
  required_providers {
    aws = {
      version = "~> 5.60.0"
      source  = "hashicorp/aws"
    }
  }
}
