resource "google_service_account" "terraform-env-sa" {
  project      = var.root-project-id
  account_id   = "sa-terraform-proj"
  display_name = "Foundation Projects SA. Managed by Terraform, for BrainTrust"
}

resource "google_organization_iam_member" "org_parent_iam" {
  count  = length(var.sa_role_list)
  role   = var.sa_role_list[count.index]
  org_id = var.org_id
  member = "serviceAccount:${google_service_account.terraform-env-sa.email}"
}
