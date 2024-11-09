variable "cidr_block" {
  type        = string
  description = "# Define a CIDR block"
}

variable "region" {
  type        = string
  description = "# Define a region"
}

variable "project_name" {
  type        = string
  description = "# Define a project name"
}

# common tags
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