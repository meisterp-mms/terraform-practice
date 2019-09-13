# ---------------------------------------------------------------------------------------------------------------------
# Backend
# ---------------------------------------------------------------------------------------------------------------------
data "google_client_config" "current" {}

provider "google" {
    credentials = "${file("../account.json")}"
    project = "TerraformTest"
    region = "europe-west4"
}


# ---------------------------------------------------------------------------------------------------------------------
# Kubernetes Cluster
# ---------------------------------------------------------------------------------------------------------------------

resource "google_container_cluster" "gke-cluster" {
  name               = "test-cluster"
  network            = "default"
  location               = "europe-west4-a"
  remove_default_node_pool = true
  initial_node_count = 3
}

# ---------------------------------------------------------------------------------------------------------------------
# Project
# ---------------------------------------------------------------------------------------------------------------------
module "project" {
  source          = "git@github.com:meisterp-mms/terraform-practice.git"
  costcenter      = "${var.costcenter}"
  project_name    = "${var.project_name}"
  env             = "${var.env}"
  org_group       = "${var.org_group}"
  folder_id       = "${var.folder_id}"
  billing_account = "${var.billing_account}"
  services        = "${local.project_services}"
}

# ---------------------------------------------------------------------------------------------------------------------
# Network
# ---------------------------------------------------------------------------------------------------------------------
module "network" {
  source       = "git@github.com:meisterp-mms/terraform-practice.git"
  network_name = "demonetwork"
  region       = "${var.region}"
  project_id   = "${module.project.project_id}"
}