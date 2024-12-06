# AWS Provider
provider "aws" {
  region = var.aws_region
}

# EKS Cluster Module
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.0.0"  # Adjust to the latest version
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.subnets
  vpc_id          = var.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = var.node_desired_capacity
      max_capacity     = var.node_max_capacity
      min_capacity     = var.node_min_capacity

      instance_type = var.node_instance_type
    }
  }

  tags = var.tags
}
