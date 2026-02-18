terraform {
  required_version = "~> 1.10"

  backend "s3" {
    bucket       = "orgname-prod-terraform-state-us-west-2"
    key          = "app-my-webapp-prod/terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
