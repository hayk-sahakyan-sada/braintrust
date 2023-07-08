variable "org_id" {
  description = "Organization ID"
  type        = string
}

variable "billing_account" {
  description = "Main billing account to be used"
  type        = string
}

variable "root-project-id" {
  description = "The root project for all the stuff"
  type        = string
}

variable "sa_role_list" {
  description = "Service account roles on the folder level"
  type        = list(string)
  default = [
    "roles/browser",
    "roles/storage.objectAdmin",
    "roles/billing.user",
    "roles/resourcemanager.projectCreator"
  ]
}

variable "apiList" {
  description = "list of necessary APIs"
  type        = list(string)
  default = [
    "cloudbilling.googleapis.com",
    "serviceusage.googleapis.com"
  ]
}
