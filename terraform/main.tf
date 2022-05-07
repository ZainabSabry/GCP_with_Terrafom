module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  vpc_name   = var.vpc_name
  region = var.region
  ip_cidr_range_mngmnt = var.ip_cidr_range_mngmnt
  ip_cidr_range_restricted = var.ip_cidr_range_restricted

}

module "gke" {
    source = "./modules/gke"
    region = var.region
    vpc_id = module.network.vpc_id
    machine_type = var.machine_type
    node-count = var.node-count
    service_account = module.security.service-account-email
    subnet-restricted = module.network.subnet-restricted
    project_id = var.project_id
    master_ipv4_cidr_block = var.master_ipv4_cidr_block
    ip_cidr_range_mngmnt = var.ip_cidr_range_mngmnt
    services_ipv4_cidr_block = var.services_ipv4_cidr_block
    pods_ipv4_cidr_block = var.pods_ipv4_cidr_block

}

module "security" {
    source = "./modules/security"
    project_id = var.project_id
}