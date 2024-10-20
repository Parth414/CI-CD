provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "aws-eks-cluster"
  cluster_version = "1.21"
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids
}

