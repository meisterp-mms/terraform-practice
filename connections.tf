provider "google" {
    credentials = "${file("../account.json")}"
    project = "TerraformTest"
    region = "europe-west4"
}

