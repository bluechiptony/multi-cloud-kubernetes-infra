module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"

  name            = "main_vpc"
  cidr            = "10.0.0.0/16"
  azs             = ["${var.aws_region}a", "${var.aws_region}b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }
  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb" = "1"
  }


  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false // for high availablilty use one nate gateway per AZ

  enable_dns_hostnames = true
  enable_dns_support   = true


  tags = {
    Environment = var.aws_environment
    Name        = "main_eks_vpc"
  }

}