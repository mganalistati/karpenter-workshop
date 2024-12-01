resource "kubernetes_service_account" "k8s_controller_service_account" {
  metadata {
    labels = {
      "app.kubernetes.io/component" = "controller"
      "app.kubernetes.io/name"      = var.service_account_name
    }
    name      = var.service_account_name
    namespace = var.namespace
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.eks_load_balancer_controller_role.arn
    }
  }
}