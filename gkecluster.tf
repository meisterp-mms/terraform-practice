resource "google_container_cluster" "gke-cluster" {
  name               = "test-cluster"
  network            = "default"
  zone               = "europe-west4-a"
  initial_node_count = 3
}