resource "google_container_cluster" "main" {
  name     = "main-gke"
  location = "us-central1"

  network    = google_compute_network.main.name
  subnetwork = google_compute_subnetwork.main.name

  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}