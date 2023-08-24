terraform {
  backend "s3" {
    bucket = "platformops-tf"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
    profile = "platform"
  }
}