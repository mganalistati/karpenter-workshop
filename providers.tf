# terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.74.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.34.0"
    }
  }
  backend "s3" {
    bucket = "karpenter-workshop"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

# aws provider config
provider "aws" {
  region = var.region
}

# k8s provider config
provider "kubernetes" {
  host                   = module.eks_cluster.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks_cluster.cluster_ca_cert)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.eks_cluster.cluster_name]
    command     = "aws"
  }
}