variable "project_name" {
  type        = string
  description = "# Define a project name"
}

variable "common_tags" {
  type        = map(any)
  description = "# Define a common tags"
}

variable "cluster_name" {
  type        = string
  description = "# Define a cluster name"
}

# variable "subnet_ids" {
#   type        = list(string)
#   description = "# Define a subnet ids list"
# }

variable "pod_private_sn_1a" {
  type        = string
  description = "# Define a pod private sn_1a"
}

variable "pod_private_sn_2b" {
  type        = string
  description = "# Define a pod private sn_2b"
}

variable "pod_private_sn_3c" {
  type        = string
  description = "# Define a pod private sn_3c"
}

variable "capacity_type" {
  type        = string
  description = "# Define a capacity type"

  default = "ON_DEMAND"
}

variable "disk_size" {
  type        = number
  description = "# Define a capacity type"

  default = 20
}

variable "instance_type" {
  type        = list(string)
  description = "# Define a capacity type list"

  default = ["m5.large"]
}