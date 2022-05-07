variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "ip_cidr_range_mngmnt" {
  type = string
}

variable "ip_cidr_range_restricted" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "node-count" {
  type = number
}

variable "master_ipv4_cidr_block" {
  type = string
}

variable "services_ipv4_cidr_block" {
  type = string
}

variable "pods_ipv4_cidr_block" {
  type = string
}