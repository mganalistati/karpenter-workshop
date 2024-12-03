module "eks_network" {
  source = "./modules/network"

  project_name = var.project_name
  cidr_block   = var.cidr_block

  common_tags = var.tags
}

module "eks_cluster" {
  source = "./modules/cluster"

  project_name      = var.project_name
  ctp_private_sn_1a = module.eks_network.ctp_private_sn_1a
  ctp_private_sn_2b = module.eks_network.ctp_private_sn_2b
  ctp_private_sn_3c = module.eks_network.ctp_private_sn_3c

  common_tags = var.tags
}

module "eks_node_group" {
  source = "./modules/node_group"

  project_name = var.project_name
  cluster_name = module.eks_cluster.cluster_name

  pod_private_sn_1a = module.eks_network.pod_private_sn_1a
  pod_private_sn_2b = module.eks_network.pod_private_sn_2b
  pod_private_sn_3c = module.eks_network.pod_private_sn_3c

  common_tags = var.tags
}

module "eks_load_balancer_controller" {
  source = "./modules/load_balancer_controller"

  project_name = var.project_name
  oidc_url     = module.eks_cluster.oidc_url
  cluster_name = module.eks_cluster.cluster_name
  vpc_id       = module.eks_network.vpc_id

  common_tags = var.tags
}