# Define Project Region In Root Module
variable "region" {
  description = "# Define a region of the cluster"
  type        = string
}

# Define Project CIDR In Network Son Module
variable "cidr_block" {
  description = "# Define a CIDR block of the VPC"
  type        = string
}

# Define Common Tags To Any Project
variable "project_name" {
  description = "# Define a project name"
  type        = string
}

variable "tags" {
  description = "# Define a list of tags for the resources"
  type        = map(any)
}

variable "eks_version" {
  description = "# Define a version of the eks cluster"
  type        = string
}