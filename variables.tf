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

variable "tags" {
  description = "# Define a list of tags"
  type        = map(any)
}