terraform {
  backend "gcs" {
    bucket = "backend_terra"
    prefix = "terraform/state"
  }
}
