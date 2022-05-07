resource "google_container_node_pool" "node-pool" {
  name       = "node-pool"
  cluster    = google_container_cluster.gke-cluster.id
  node_count = var.node-count

  node_config {
    machine_type = var.machine_type
  
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = var.service_account
    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/trace.append",
    ]
  }
    autoscaling {
      max_node_count = 1
      min_node_count = 1
    }
    max_pods_per_node = 100

    management {
      auto_repair  = true
      auto_upgrade = true
    }

    upgrade_settings {
      max_surge       = 1
      max_unavailable = 1
    }

  
}