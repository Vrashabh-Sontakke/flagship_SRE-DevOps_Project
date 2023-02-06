locals {
    cluster_name = "eks-cluster-${var.name}-${data.aws.current.name}"
}

module "eks_cluster" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.25.0"

  cluster_name                    = local.cluster_name
  cluster_version                 = var.cluster_version
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  subnet_ids = [aws_subnet.private[0].id, aws_subnet.private[1].id, aws_subnet.private[2].id]
  vpc_id     = aws_vpc.main.id

  enable_irsa = true
}