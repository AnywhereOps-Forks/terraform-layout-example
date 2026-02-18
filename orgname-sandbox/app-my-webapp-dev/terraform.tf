terraform {
  required_version = "~> 1.10"

  backend "s3" {
    bucket       = "orgname-sandbox-terraform-state-us-west-2"
    key          = "app-my-webapp-dev/terraform.tfstate"
    region       = "us-west-2"
    encrypt      = true
    use_lockfile = true
  }
}
