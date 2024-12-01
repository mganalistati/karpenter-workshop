resource "helm_release" "helm_controller_release" {
  name        = var.release_name
  namespace   = var.namespace
  repository  = "https://aws.github.io/eks-charts"
  chart       = "aws-load-balancer-controller"
  version     = "1.10.1"
  description = "Release for deploy aws load balancer controller"

  set {
    name  = "region"
    value = data.aws_region.current.name
  }

  set {
    name  = "vpcId"
    value = var.vpc_id
  }

  set {
    name  = "clusterName"
    value = var.cluster_name
  }

  set {
    name  = "serviceAccount.create"
    value = "false"
  }

  set {
    name  = "serviceAccount.name"
    value = var.service_account_name
  }
}