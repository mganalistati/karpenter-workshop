output "cluster_name" {
  description = "Name of the cluster."
  value       = aws_eks_cluster.eks_cluster.id
}

output "oidc_url" {
  description = "URL of the provedor OpenID Connect"
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_ca_cert" {
  description = "Certificate Authority of the cluster"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
} 