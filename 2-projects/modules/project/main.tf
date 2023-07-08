module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name                     = var.project_name
  random_project_id        = true
  random_project_id_length = 4
  create_project_sa        = false
  org_id                   = var.org_id
  folder_id                = var.folder_id
  billing_account          = var.billing_account
  activate_apis            = var.activate_apis
  labels = {
    requestor   = var.requestor
    team        = var.team
    supervisor  = var.supervisor
    environment = var.environment
    workspace   = var.workspace
    bigdata     = var.bigdata
    compute     = var.compute
  }
}

resource "google_service_account" "ops-sa" {
  for_each     = var.sa_creation == true ? toset(["create"]) : []
  project      = module.project-factory.project_id
  account_id   = "ops-sa"
  display_name = "Operational SA. Managed by Terraform"
}

resource "google_project_iam_member" "project_parent_iam" {
  for_each = var.sa_creation == true ? toset(var.sa_role_list) : []
  role     = each.value
  project  = module.project-factory.project_id
  member   = "serviceAccount:${google_service_account.ops-sa["create"].email}"
}
