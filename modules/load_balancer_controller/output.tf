output "cluster_account" {
  description = "AWS Account of the cluster."
  value       = data.aws_caller_identity.current.account_id
}