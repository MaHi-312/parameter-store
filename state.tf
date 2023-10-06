terraform {
  backend "s3" {
    bucket = "terraform-malleswari"
    key = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}f