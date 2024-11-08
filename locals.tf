locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Project      = "karpenter-workshop",
    Organization = "Homebroker",
    Department   = "Devops",
    Environment  = "Homologation",
    Created-by   = "Terraform",
  }
}