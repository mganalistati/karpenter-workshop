module "eks_network" {
  source = "./modules/network"

  cidr_block   = var.cidr_block
  project_name = var.project_name
  common_tags  = local.common_tags
}

module "eks_cluster" {
  source = "./modules/cluster"

  project_name      = var.project_name
  common_tags       = local.common_tags
  ctp_private_sn_1a = module.eks_network.ctp_private_sn_1a
  ctp_private_sn_2b = module.eks_network.ctp_private_sn_2b
}