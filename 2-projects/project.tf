module "project" {
  source          = "./modules/project"
  project_name    = var.project_name
  org_id          = local.org_id
  folder_id       = local.folder["${var.env}"]
  billing_account = local.billing_account
  activate_apis   = var.activate_apis
  requestor       = var.requestor
  team            = var.team
  supervisor      = var.supervisor
  environment     = var.env
  workspace       = var.workspace
  bigdata         = var.bigdata
  compute         = var.compute
  sa_creation     = var.sa_creation
}