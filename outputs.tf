# ==========================================
# 1. VPC and Networking Outputs
# ==========================================

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "vpc_name_tag" {
  description = "The Name tag of the VPC"
  value       = aws_vpc.main.tags["Name"]
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.nat.id
}

# ==========================================
# 2. Security Group Outputs
# ==========================================

output "bastion_security_group_id" {
  description = "Security Group ID for the Bastion Host"
  value       = aws_security_group.bastion.id
}

output "eks_control_plane_security_group_id" {
  description = "Security Group ID for the EKS Control Plane"
  value       = aws_security_group.eks_control_plane.id
}

# ==========================================
# 3. Bastion Host Outputs
# ==========================================

output "bastion_instance_id" {
  description = "The EC2 Instance ID of the Bastion Host"
  value       = aws_instance.bastion[0].id
}

output "bastion_public_ip" {
  description = "The Public IP address of the Bastion Host (Use this to SSH)"
  value       = aws_instance.bastion[0].public_ip
}

# ==========================================
# 4. IAM Role Outputs
# ==========================================

output "eks_cluster_iam_role_name" {
  description = "IAM role name for the EKS cluster"
  value       = aws_iam_role.eks_cluster.name
}

output "eks_node_group_iam_role_name" {
  description = "IAM role name for the EKS node group"
  value       = aws_iam_role.eks_nodes.name
}

# ==========================================
# 5. EKS Cluster & Node Group Outputs
# ==========================================

output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster"
  value       = aws_eks_cluster.main.id
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS control plane (API Server URL)"
  value       = aws_eks_cluster.main.endpoint
}

output "eks_node_group_id" {
  description = "The ID of the EKS Node Group"
  value       = aws_eks_node_group.main.id
}
