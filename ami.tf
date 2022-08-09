provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-b65"
    key    = "ami/cart/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ami" {
  source    = "github.com/raghudevopsb65/immutable-app-ami"
  COMPONENT = "cart"
}
