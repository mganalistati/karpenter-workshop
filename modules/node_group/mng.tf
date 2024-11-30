resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}-spot-mng"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    var.pod_private_sn_1a,
    var.pod_private_sn_2b,
    var.pod_private_sn_3c
  ]

  capacity_type  = var.capacity_type
  instance_types = var.instance_type
  disk_size      = var.disk_size

  # Melhorar para flexibilidade
  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.eks_cni_node_role_policy_attachment,
    aws_iam_role_policy_attachment.eks_ecr_node_role_policy_attachment,
    aws_iam_role_policy_attachment.eks_worker_node_role_policy_attachment,
  ]

  tags = var.common_tags
}