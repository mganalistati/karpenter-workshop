# Define Project Region In Root Module
variable "region" {
  type        = string
  description = "# Define a region"
}

# Define Project CIDR In Network Son Module
variable "cidr_block" {
  type        = string
  description = "# Define a CIDR block"
}

# Define Common Tags To Any Project
variable "project_name" {
  type        = string
  description = "# Define a project name"
}
variable "organization" {
  type        = string
  description = "# Define a organization"
}

variable "department" {
  type        = string
  description = "# Define a department"
}

variable "environment" {
  type        = string
  description = "# Define a environment"
}

variable "created-by" {
  type        = string
  description = "# Define a created"
}