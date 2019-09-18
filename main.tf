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
  name         = "governance-system"
  machine_type = "f1-micro"
  zone         = "europe-west4-b"
  project      = "terraformtest-252808"

  tags = ["governance-system"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
      size  = "100"
    }
  }
  metadata_startup_script = "sudo apt-get -y update;  sudo apt-get -y dist-upgrade;  sudo apt-get -y install nginx"


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