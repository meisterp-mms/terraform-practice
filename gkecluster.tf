# resource "google_container_cluster" "gke-cluster" {
#   name               = "test-cluster"
#   network            = "default"
#   location               = "europe-west4-a"
#   remove_default_node_pool = true
#   initial_node_count = 3
# }