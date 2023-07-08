variable "project_name" {
  description = "The name for the project to be created"
  type        = string
}

variable "org_id" {
  description = "The id of the parent organization"
  type        = string
}

variable "billing_account" {
  description = "The billing account to be used"
  type        = string
}

variable "activate_apis" {
  description = "The list of Apis to be activated"
  type        = list(string)
}

variable "sa_creation" {
  description = "Indication for SA creation"
  type        = bool
  default     = false
}

variable "sa_role_list" {
  description = "The list of roles to be assigned to SA for project"
  type        = list(string)
  default = [
    "roles/viewer"
  ]
}

variable "requestor" {
  description = "The requstor name"
  type        = string
}

variable "team" {
  description = "The requstor team"
  type        = string
}

variable "supervisor" {
  description = "The requstor supervisor"
  type        = string
}

variable "environment" {
  description = "The environment for the project"
  type        = string
}

variable "workspace" {
  description = "workspace project indicator"
  type        = bool
}

variable "compute" {
  description = "compute project indicator"
  type        = bool
}

variable "bigdata" {
  description = "bigdata project indicator"
  type        = bool
}

variable "folder_id" {
  description = "The folder ID for the project"
  type = string
}