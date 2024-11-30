locals {
  oidc_id = split("/", var.oidc_url)[4]
}