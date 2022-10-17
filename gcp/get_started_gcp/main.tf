terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.40.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-365619"
  region = "us-central1"
  zone = "us-central1-a"
}

resource "google_storage_bucket" "GCSD10" {
    name = "bucket-from-tf-up33"
    location = "us-central1"
  
}
