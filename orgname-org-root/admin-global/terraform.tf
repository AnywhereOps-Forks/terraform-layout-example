terraform {
  required_version = "~> 1.10"

  backend "s3" {
    bucket       = "orgname-org-root-terraform-state-us-west-2"
    key          = "admin-global/terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
