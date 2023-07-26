module "project" {
  source          = "./modules/project"
  project_name    = "${lower(var.project_name)}"
  org_id          = local.org_id
  folder_id       = local.folder["${var.env}"]
  billing_account = local.billing_account
  activate_apis   = var.activate_apis
  requestor       = "${lower(var.requestor)}"
  team            = "${lower(var.team)}"
  supervisor      = "${lower(var.supervisor)}"
  environment     = "${lower(var.env)}"
  workspace       = var.workspace
  bigdata         = var.bigdata
  compute         = var.compute
  sa_creation     = var.sa_creation
}