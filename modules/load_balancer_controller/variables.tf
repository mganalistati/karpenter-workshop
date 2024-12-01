variable "common_tags" {
  type        = map(any)
  description = "common tags"
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "oidc_url" {
  type        = string
  description = "oidc url"
}

variable "namespace" {
  type        = string
  description = "namespace"

  default = "kube-system"
}

variable "service_account_name" {
  type        = string
  description = "service account name"

  default = "aws-load-balancer-controller"
}

variable "release_name" {
  type        = string
  description = "release name"

  default = "aws-load-balancer-controller"
}

variable "cluster_name" {
  type        = string
  description = "cluster name"
}

variable "vpc_id" {
  type        = string
  description = "vpc id"
}