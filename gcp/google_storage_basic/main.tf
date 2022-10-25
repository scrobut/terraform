resource "google_storage_bucket" "ggs1" {
  name = "gcp_storage_provider"
  storage_class = "STANDARD"
  location = "us-central1"

  labels = {
    "env" = "tf_env"
    "dep" = "complience"
  }
  uniform_bucket_level_access = true
  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "SetStorageClass"
      storage_class = "NEARLINE"
    }
  }
  retention_policy {
    is_locked = true
    retention_period = 864000
  }
  
}

resource "google_storage_bucket_object" "document" {
  name = "testehml"
  bucket = google_storage_bucket.ggs1.name
  source = "Terraform-GCP.pdf"
}

