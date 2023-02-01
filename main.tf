terraform {
    required_providers {
        
        aws = {
            source = "hashicorp/aws"
            version = "~> <AWS PROVIDER VERSION>"
        }
        
        helm = {
            source = "hashicorp/helm"
            version = "~> <HELM PROVIDER VERSION>"
        }
        
        kubernetes = {
            source = "hashicorp/kubernetes"
            version = "~> <KUBERNETES PROVIDER VERSION>"
        }
    }
    
    required_version = "~> <TERRAFORM VERSION>"
}

provider "aws" {
    region = var.region
}

provider "helm" {
    kubernetes {
        host                   = data.aws_eks_cluster.cluster.endpoint
        cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
        token                  = data.aws_eks_cluster_auth.cluster.token
    }
}

provider "kubernetes" {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.cluster.token
}