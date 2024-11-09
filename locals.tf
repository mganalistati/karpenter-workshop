locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Project      = var.project_name,
    Organization = var.organization,
    Department   = var.department,
    Environment  = var.environment,
    Created-by   = var.created-by,
  }
}