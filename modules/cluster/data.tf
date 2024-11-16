# Data Source "Assume Role Poilicy" To Cluster Role
data "aws_iam_policy_document" "cluster-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["eks.amazonaws.com"]
    }
  }
}

# Data Source To Cluster Role Policy Managed By AWS
data "aws_iam_policy" "eks_cluster_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}