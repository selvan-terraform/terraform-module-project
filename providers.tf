# -----------------------------------------------------------------------------
# This file defines the required Terraform and AWS provider versions for the module.
#
# - Specifies the AWS provider source and version constraint (~> 5.0).
# - Sets the minimum required Terraform version (>= 1.0).
# - Configures the AWS provider to use the "us-east-1" region.
# -----------------------------------------------------------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region = "us-east-1"
}
