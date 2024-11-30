resource "aws_iam_role" "eks_cluster_role" {
  name               = "${var.project_name}-cluster-role"
  assume_role_policy = data.aws_iam_policy_document.cluster-assume-role-policy.json
  description        = "${var.project_name} EKS cluster role"

  tags = var.common_tags
}

resource "aws_iam_role_policy_attachment" "eks_cluster_role_policy_attachment" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = data.aws_iam_policy.eks_cluster_role_policy.arn
}