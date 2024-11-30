# Assume Role Poilicy To "Managed Node Group Role"
data "aws_iam_policy_document" "node-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

# Cluster Role Policy Managed By AWS
data "aws_iam_policy" "eks_cni_node_role_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

data "aws_iam_policy" "eks_ecr_node_role_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
}

data "aws_iam_policy" "eks_worker_node_role_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}