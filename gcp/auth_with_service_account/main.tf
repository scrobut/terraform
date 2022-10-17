terraform {
  required_providers {
    google  = {
        source = "hashicorp/google"
        version = "4.40.0"
    }
  }
}

provider "google" {
  project = "terraform-gcp-365619"  
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "key_gcp_bucket.json"
}

resource "google_storage_bucket" "GCPSA" {
  name = "bucket_terraform_gcp"
  location = "us-central1"
}