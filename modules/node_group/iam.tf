resource "aws_iam_role" "eks_node_role" {
  name               = "${var.project_name}-node-role"
  assume_role_policy = data.aws_iam_policy_document.node-assume-role-policy.json
  description        = "EKS Managed Node Group Role"

  tags = var.common_tags
}

resource "aws_iam_role_policy_attachment" "eks_cni_node_role_policy_attachment" {
  role       = aws_iam_role.eks_node_role.name
  policy_arn = data.aws_iam_policy.eks_cni_node_role_policy.arn
}

resource "aws_iam_role_policy_attachment" "eks_ecr_node_role_policy_attachment" {
  role       = aws_iam_role.eks_node_role.name
  policy_arn = data.aws_iam_policy.eks_ecr_node_role_policy.arn
}

resource "aws_iam_role_policy_attachment" "eks_worker_node_role_policy_attachment" {
  role       = aws_iam_role.eks_node_role.name
  policy_arn = data.aws_iam_policy.eks_worker_node_role_policy.arn
} 