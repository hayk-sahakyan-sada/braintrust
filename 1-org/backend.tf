terraform {
  backend "gcs" {
    bucket = "brain-trust-state"
    prefix = "terraform/org/state"
  }
}