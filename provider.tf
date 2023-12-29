# Define the MongoDB Atlas Provider
terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
  required_version = ">= 0.13"
  
  backend "s3" {
    key    = "atlas/main.tf"
    profile = "default"
    encrypt = true
  }
}