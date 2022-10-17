resource "google_storage_bucket" "ggs1" {
  name = "gcp_storage_provider"
  storage_class = "STANDARD"
  location = "us-central1"
}