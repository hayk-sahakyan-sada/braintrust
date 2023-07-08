output "prod_folder_id" {
  value       = google_folder.prod.id
  description = "The ID of prod folder"
}

output "np_folder_id" {
  value       = google_folder.non-prod.id
  description = "The ID of non-prod folder"
}

output "dev_folder_id" {
  value       = google_folder.dev.id
  description = "The ID of dev folder"
}

output "billing_account" {
  value       = var.billing_account
  description = "The Billing account"
  sensitive   = true
}

output "org_id" {
  value       = var.org_id
  description = "The Billing account"
  sensitive   = true
}