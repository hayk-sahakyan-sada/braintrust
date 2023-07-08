locals {
  folder = {
    prod     = data.terraform_remote_state.parent.outputs.prod_folder_id
    non-prod = data.terraform_remote_state.parent.outputs.np_folder_id
    dev      = data.terraform_remote_state.parent.outputs.dev_folder_id
  }
  org_id          = data.terraform_remote_state.parent.outputs.org_id
  billing_account = data.terraform_remote_state.parent.outputs.billing_account
}

data "terraform_remote_state" "parent" {
  backend = "gcs"

  config = {
    bucket = var.remote_state_bucket
    prefix = "terraform/org/state"
  }
}
