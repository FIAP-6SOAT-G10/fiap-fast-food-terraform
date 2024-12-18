terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.77.0"
    }

    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.21.4"
    }
  }
}

provider "aws" {}

provider "mongodbatlas" {
  alias = "mongodbatlas"
}