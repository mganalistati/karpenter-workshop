# Define Project CIDR In Network Son Module
variable "cidr_block" {
  type        = string
  description = "# Define a CIDR block"
}

# Define Project Name
variable "project_name" {
  type        = string
  description = "# Define a project name"
}

variable "common_tags" {
  type        = map(any)
  description = "# Define a common tags"
}