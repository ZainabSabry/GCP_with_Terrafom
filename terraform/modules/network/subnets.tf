
resource "google_compute_subnetwork" "mngmnt-subnet" {
  name          = "mngmnt-subnetwork"
  ip_cidr_range = var.ip_cidr_range_mngmnt
  region        = var.region
  network       = google_compute_network.vpc_network.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "restricted-subnet" {
  name          = "restricted-subnetwork"
  ip_cidr_range = var.ip_cidr_range_restricted
  region        = var.region
  network       = google_compute_network.vpc_network.id
  private_ip_google_access = true
}