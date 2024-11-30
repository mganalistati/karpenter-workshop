variable "common_tags" {
  type        = map(any)
  description = "common tags"
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "oidc_url" {
  type        = string
  description = "oidc url"
}