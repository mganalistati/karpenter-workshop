# Define Project Region In Root Module
variable "region" {
  description = "# Define a region"
  type        = string
}

# Define Project CIDR In Network Son Module
variable "cidr_block" {
  description = "# Define a CIDR block"
  type        = string
}

# Define Common Tags To Any Project
variable "project_name" {
  description = "# Define a project name"
  type        = string
}
variable "organization" {
  description = "# Define a organization"
  type        = string
}

variable "department" {
  description = "# Define a department"
  type        = string
}

variable "environment" {
  description = "# Define a environment"
  type        = string
}

variable "created-by" {
  description = "# Define a created"
  type        = string
}