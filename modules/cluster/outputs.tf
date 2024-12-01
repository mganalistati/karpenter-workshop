output "eks_version" {
  description = "The Kubernetes server version for the cluster."
  value       = aws_eks_cluster.eks_cluster.version
}

output "cluster_name" {
  description = "The name of the cluster"
  value       = aws_eks_cluster.eks_cluster.id
}

output "oidc_url" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_ca_cert" {
  description = "Attribute block containing certificate-authority-data for your cluster."
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
} 