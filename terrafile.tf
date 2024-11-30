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
  ctp_private_sn_3c = module.eks_network.ctp_private_sn_3c
}

module "eks_node_group" {
  source = "./modules/node_group"

  cluster_name = module.eks_cluster.cluster_name
  project_name = var.project_name

  # validar como fazer - Error: Unsupported attribute
  # subnet_ids = [
  #   module.eks_network.pod_private_sn_1a,
  #   module.eks_network.pod_private_sn_2b,
  #   module.eks_network.pod_private_sn_3c
  # ]

  pod_private_sn_1a = module.eks_network.pod_private_sn_1a
  pod_private_sn_2b = module.eks_network.pod_private_sn_2b
  pod_private_sn_3c = module.eks_network.pod_private_sn_3c

  capacity_type = "SPOT"
  instance_type = ["m5.large"]

  common_tags = local.common_tags
}