resource "google_storage_bucket" "gsf" {
    name = "storage_bucket_with_terraformo"
    location = "us-central1"
    storage_class = "STANDARD"

    labels = {
        "teste" = "hmlterraform"
    }

    lifecycle_rule {
      condition {
        age = 5
      }
      action {
        type = "SetStorageClass"
        storage_class = "NEARLINE"
      }
    }
}

resource "google_storage_bucket_object" "GCS1" {
    name = "img/doc"
    bucket = google_storage_bucket.gsf.name
    source = "Terraform-GCP.pdf"

}