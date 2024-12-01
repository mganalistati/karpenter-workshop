resource "aws_iam_role" "eks_load_balancer_controller_role" {
  name        = "${var.project_name}-load-balancer-controller-role"
  description = "EKS load balancer controller role"

  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc_id}"
            },
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Condition": {
                "StringEquals": {
                    "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc_id}:aud": "sts.amazonaws.com",
                    "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc_id}:sub": "system:serviceaccount:kube-system:${var.service_account_name}"
                }
            }
        }
    ]
}
EOF

  tags = var.common_tags
}

resource "aws_iam_role_policy_attachment" "eks_load_balancer_controller_role_policy_attachment" {
  role       = aws_iam_role.eks_load_balancer_controller_role.name
  policy_arn = aws_iam_policy.eks_load_balancer_controller_policy.arn
}