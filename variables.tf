variable "aws_region" {
  description = "The AWS region where EKS cluster will be deployed"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.27"
}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}

variable "node_instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "node_desired_capacity" {
  description = "Desired number of nodes"
  type        = number
  default     = 2
}

variable "node_min_capacity" {
  description = "Minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "node_max_capacity" {
  description = "Maximum number of nodes in the node group"
  type        = number
  default     = 4
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "eks-cluster"
  }
}
