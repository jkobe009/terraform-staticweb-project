# configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "aosnote-terraform-jupiter-remote-state"
    key     = "terraform.juputer.tfstate.dev"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}