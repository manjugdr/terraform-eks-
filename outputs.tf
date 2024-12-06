output "eks_cluster_id" {
  description = "The EKS cluster ID"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  value       = module.eks.cluster_version
}

output "eks_node_group_arns" {
  description = "ARNs of the EKS managed node groups"
  value       = module.eks.managed_node_group_arns
}

output "eks_node_group_names" {
  description = "Names of the EKS managed node groups"
  value       = module.eks.managed_node_group_names
}
