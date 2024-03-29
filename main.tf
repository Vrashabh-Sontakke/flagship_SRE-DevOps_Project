terraform {
    required_providers {
        
        aws = {
            source = "hashicorp/aws"
            version = ">=4.52.0"
        }
        
        helm = {
            source = "hashicorp/helm"
            version = ">=2.8.0"
        }
        
        kubernetes = {
            source = "hashicorp/kubernetes"
            version = ">=2.17.0"
        }
    }
    
    required_version = ">=1.0.2"
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