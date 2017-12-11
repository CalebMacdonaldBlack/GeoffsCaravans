variable "region" {}
variable "namespace" {}

provider "aws" {
  region = "${var.region}"
}

resource "aws_s3_bucket" "site" {
  bucket = "${var.namespace}-site"
}

terraform {
  backend "s3" {
    bucket = "geoffs-caravans"
    key    = "state.tfstate"
    region = "ap-southeast-2"
  }
}
