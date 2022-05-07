resource "google_container_cluster" "gke-cluster" {
  name       = "my-gke-cluster"
  location   = var.region
  network    = var.vpc_id
  subnetwork = var.subnet-restricted
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = var.ip_cidr_range_mngmnt
    }
  }

  addons_config {
    // Enable network policy (Calico)
    network_policy_config {
      disabled = false
    }
  }
  network_policy {
    enabled = "true"
  }

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
    master_global_access_config {
      enabled = true
    }
  }

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  networking_mode = "VPC_NATIVE"
  ip_allocation_policy {
    cluster_ipv4_cidr_block = var.pods_ipv4_cidr_block
    services_ipv4_cidr_block = var.services_ipv4_cidr_block
  }
}

