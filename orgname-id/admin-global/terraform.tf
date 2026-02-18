terraform {
  required_version = "~> 1.10"

  backend "s3" {
    bucket       = "orgname-id-terraform-state-us-west-2"
    key          = "admin-global/terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
