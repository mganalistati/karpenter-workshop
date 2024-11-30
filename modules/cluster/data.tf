# Assume Role Poilicy To Cluster Role
data "aws_iam_policy_document" "cluster-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}

# Cluster Role Policy Managed By AWS
data "aws_iam_policy" "eks_cluster_role_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

# Recovery Certificate Fingerprint From Cluster OIDC Endpoit  
data "tls_certificate" "eks_oidc_tls_certificate" {
  url = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}