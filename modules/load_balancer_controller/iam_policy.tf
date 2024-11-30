resource "aws_iam_policy" "eks_load_balancer_controller_policy" {
  name        = "${var.project_name}-load-balancer-controller-policy"
  path        = "/"
  description = "EKS load balancer controller policy"
  policy      = file("${path.module}/iam_policy.json")

  tags = var.common_tags
}