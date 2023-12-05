provider "aws" {
  profile = "anthony"
  region  = var.aws_region
}

terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }
    random = {
      source = "hashicorp/random"
    }
    
  }
  required_version = "~> 1.0"
}