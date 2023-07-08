variable "remote_state_bucket" {
  description = "The bucket of remote state"
  type        = string
}

variable "project_name" {
  description = "The name for the project"
  type        = string
}

variable "activate_apis" {
  description = "The list of API for the project"
  type        = list(string)
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

variable "env" {
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

variable "sa_creation" {
  description = "service account creation indicator"
  type        = bool
}