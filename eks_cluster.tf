locals {
    cluster_name = "eks-cluster-${var.name}-${data.aws.current.name}"
}