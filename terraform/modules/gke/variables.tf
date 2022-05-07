variable "region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "node-count" {
  type = number
}

variable "ip_cidr_range_mngmnt" {
  type = string
}

variable "service_account" {
  type = string
}

variable "subnet-restricted" {
  type = string
}

variable "master_ipv4_cidr_block" {
  type = string
}

variable "project_id" {
  type = string
}

variable "services_ipv4_cidr_block" {
  type = string
}

variable "pods_ipv4_cidr_block" {
  type = string
}