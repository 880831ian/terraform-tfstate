provider "google" {
  project = "XXXXX"
  zone    = "asia-east1-b"
}

resource "google_compute_instance" "instance" {
  name         = "test"
  machine_type = "e2-small"
  zone         = "asia-east1-b"

  labels = {
    env = "11"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "projects/XXXX/global/networks/test"
    subnetwork = "projects/XXXX/regions/asia-east1/subnetworks/testtest"
  }
}
