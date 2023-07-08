resource "google_project_service" "enable_api" {
  count              = length(var.apiList)
  service            = var.apiList[count.index]
  project            = var.root-project-id
  disable_on_destroy = false
}