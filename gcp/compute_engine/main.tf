resource "google_compute_instance" "vm1-from-tf" {
  name = "vm1-from-tf"
  zone = "us-central1-a"
  machine_type = "n1-standard-1"
  #allow_stopping_for_update = true

  network_interface {
    network = "default"
    subnetwork = "default"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-1804-bionic-v20221015"
      size = 20
      
    }
  }
}
