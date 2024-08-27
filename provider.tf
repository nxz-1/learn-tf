terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.43.0"
    }
  }
  backend "gcs" {
    bucket  = "terraform-state-example-1998"
    prefix  = "dev"
  }
}

provider "google" {
  project     = "terraform-project-433611"
  region      = "asia-south1"
  credentials = file("terraform-service-account-creds.json")
}