module "eks_network" {
  source = "./modules/network"

  cidr_block   = var.cidr_block
  project_name = var.project_name
  common_tags  = local.common_tags
}