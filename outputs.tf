output "eks_cluster_name" {
  description = "Name of the cluster."
  value       = module.eks_cluster.cluster_name
}

output "eks_cluster_version" {
  description = "# Define a version of the EKS cluster."
  value       = var.eks_version
}
output "aws_cluster_account" {
  description = "AWS Account of the cluster."
  value       = module.eks_load_balancer_controller.cluster_account
}

output "aws_cluster_region" {
  description = "AWS Region of the cluster."
  value       = var.region
}

output "eks_cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = module.eks_cluster.cluster_endpoint
}