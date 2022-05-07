output "vpc_id" {
  value = google_compute_network.vpc_network.id
}

output "subnet-mngmnt" {
  value = google_compute_subnetwork.mngmnt-subnet.name
}

output "subnet-restricted" {
  value = google_compute_subnetwork.restricted-subnet.name
}

output "nat_id" {
  value = google_compute_router_nat.nat.id
}