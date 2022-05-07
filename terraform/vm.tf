resource "google_compute_instance" "vm-gke" {
  name         = "vm-gke"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  tags = ["vm"]

  boot_disk {
    initialize_params {
      image = "projects/centos-cloud/global/images/centos-7-v20220406"
    }
  }


  network_interface {
    network = var.vpc_name
    subnetwork = module.network.subnet-mngmnt
  }

  metadata = {
    name = "vm"
  }
}