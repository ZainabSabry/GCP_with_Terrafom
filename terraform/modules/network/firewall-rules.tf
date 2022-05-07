# resource "google_compute_firewall" "task-firewall" {
#   name    = "task-firewall"
#   network = google_compute_network.vpc_network.name
#   source_ranges = [ "0.0.0.0/0" ]
#   priority = 1100


#   deny {
#     protocol = "all"
#   }
# }


# resource "google_compute_firewall" "task-firewall-2" {
#   name    = "task-firewall-2"
#   network = google_compute_network.vpc_network.name
#   destination_ranges = [ "0.0.0.0/0" ]
#   direction = "EGRESS"
#   priority = 1100

#   deny {
#     protocol = "all"
#   }
# }

# resource "google_compute_firewall" "task-firewall-3" {
#   name    = "task-firewall-3"
#   network = google_compute_network.vpc_network.name
#   destination_ranges = [ var.ip_cidr_range_mngmnt, var.ip_cidr_range_restricted]
#   direction = "EGRESS"
#   priority = 900

#   allow {
#     protocol = "all"
#   }
# }

# resource "google_compute_firewall" "task-firewall-4" {
#   name    = "task-firewall-4"
#   network = google_compute_network.vpc_network.name
#   source_ranges = [ var.ip_cidr_range_mngmnt, var.ip_cidr_range_restricted]
#   direction = "INGRESS"
#   priority = 800

#   allow {
#     protocol = "all"
#   }
# }

resource "google_compute_firewall" "allow-iap" {
  name    = "allow-iap"
  network = google_compute_network.vpc_network.name
  source_ranges = ["35.235.240.0/20"]
  direction = "INGRESS"
  priority = 700

  allow {
    protocol = "all"
  }
}

# resource "google_compute_firewall" "allow-ingress-to-loadbalancer" {
#   name    = "allow-ingress-to-loadbalancer"
#   network = google_compute_network.vpc_network.name
#   source_ranges = ["0.0.0.0/0"]
#   direction = "INGRESS"
#   priority = 700

#   allow {
#     protocol = "TCP"
#     ports = [ "80" ]
#   }
# }
