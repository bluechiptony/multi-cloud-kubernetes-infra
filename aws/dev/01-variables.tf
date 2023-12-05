variable "aws_environment" {
  type        = string
  description = "AWS environment"
  default     = "dev"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "eks_node_default_disk_size" {
  type        = number
  description = "EKS default disk size"
  default     = 20
}
variable "eks_node_default_instance_type" {
  type        = string
  description = "EKS default disk size"
  default     = "t3.small"
}
variable "eks_node_default_capacity_type" {
  type        = string
  description = "EKS default disk size"
  default     = "ON_DEMAND"
}

variable "cert_manager_email" {
  type = string
  default = "tony5egwu@gmail.com"
  description = "Cert manager emaill address"
}

variable "cluster_name" {
  type = string
  default = "chainge_eks_cluster"
}