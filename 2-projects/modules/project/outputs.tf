output "project_id" {
  value       = module.project-factory.project_id
  description = "The newly created project id"
}

output "enabled_apis" {
  value       = module.project-factory.enabled_apis
  description = "Enabled APIs in the project"
}
