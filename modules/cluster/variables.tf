
variable "project_name" {
  type        = string
  description = "# Define a project name"
}

variable "common_tags" {
  type        = map(any)
  description = "# Define a common tags"
}

variable "ctp_private_sn_1a" {
  type        = string
  description = "# Define a ctp_private_sn_1a"
}

variable "ctp_private_sn_2b" {
  type        = string
  description = "# Define a ctp_private_sn_2b"
}