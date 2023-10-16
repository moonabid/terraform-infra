terraform {
  required_version = ">=1.1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
  #profile = "mfh"
  default_tags {
    tags = {
      project = var.project
    }
  }
}
