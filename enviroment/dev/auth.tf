data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  project  = "miprimerproyecto-333317"
  name     = "gke-task2-gke"
  location = "us-central1-b"
}