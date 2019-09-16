# ---------------------------------------------------------------------------------------------------------------------
# Backend
# ---------------------------------------------------------------------------------------------------------------------

provider "google" {
  credentials = "account.json"
  project     = "TerraformTest"
  region      = "europe-west4"
}


# ---------------------------------------------------------------------------------------------------------------------
# Kubernetes Cluster
# ---------------------------------------------------------------------------------------------------------------------

resource "google_container_cluster" "test-cluster" {
  name                     = "test-cluster"
  network                  = "default"
  location                 = "europe-west4-a"
  remove_default_node_pool = true
  initial_node_count       = 1
  node_config {
    machine_type = "f1-micro"
  }

}