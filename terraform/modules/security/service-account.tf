resource "google_service_account" "service_account-gke" {
  account_id   = "service-account-gke-mngmnt"
  display_name = "service-account-gke-mngmnt"
  project = var.project_id
}