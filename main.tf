# ---------------------------------------------------------------------------------------------------------------------
# Backend
# ---------------------------------------------------------------------------------------------------------------------

provider "google" {
  credentials = "account.json"
  project     = "terraformtest-252808"
  region      = "europe-west4"
}


# ---------------------------------------------------------------------------------------------------------------------
# Kubernetes Cluster
# ---------------------------------------------------------------------------------------------------------------------


resource "google_compute_instance" "default" {
  name         = "playground_server"
  machine_type = "f1-micro"
  zone         = "europe-west4-b"
  project      = "terraformtest-252808"

  tags = ["playground_server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
      size  = "100"
    }
  }
  metadata_startup_script = "sudo apt -y update && sudo apt install nginx"


  network_interface {
  network    = "default"
     access_config {
      // Ephemeral IP
    }
  }

#  service_account {
#    scopes = ["userinfo-email", "compute-ro", "storage-ro", "cloud-platform"]
#  }

}