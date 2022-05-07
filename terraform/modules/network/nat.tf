resource "google_compute_router_nat" "nat" {
  name                               = "my-router-nat"
  router                             = google_compute_router.router.name
  region                             = var.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork { 
      name = google_compute_subnetwork.mngmnt-subnet.name
      source_ip_ranges_to_nat = ["PRIMARY_IP_RANGE"]
  }
}