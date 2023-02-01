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