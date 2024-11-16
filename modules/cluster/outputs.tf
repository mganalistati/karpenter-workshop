output "eks_version" {
  description = "The Kubernetes server version for the cluster."
  value       = aws_eks_cluster.eks_cluster.version
}

output "endpoint" {
  description = "The endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.eks_cluster.endpoint
}