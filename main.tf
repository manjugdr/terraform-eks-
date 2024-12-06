terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.0.0" # Ensure you're using the correct version
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids

  managed_node_groups = {
    default = {
      instance_types   = [var.node_instance_type]
      desired_capacity = var.node_desired_capacity
      min_size         = var.node_min_capacity
      max_size         = var.node_max_capacity
    }
  }

  tags = var.tags
}
