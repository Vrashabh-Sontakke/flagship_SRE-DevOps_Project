variable "name" {
  description = "Represents the name of the networked environment."
  type        = string
}

variable "region" {
  type        = string
  description = "Indicates the AWS region for the provider to deploy resources into."
}

variable "cidr_block" {
  type        = string
  description = "Specifies the IP address range of the environment in CIDR notation."
}

variable "public_cidr_block" {
  type        = list(string)
  description = "A list of strings that defines the CIDR block for the 'public network'."
}

variable "private_cidr_block" {
  type        = list(string)
  description = "A list of strings that defines the CIDR block for the 'private network'."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of strings with a default value of an empty map, representing the tags for the resources in the environment"
}

variable "availability_zones" {
  type        = list(any)
  description = "A list of any type that indicates the availability zones for the environment, with examples such as 'ap-south-1a' and 'ap-south-1b'."
}

variable "num_nat_gateways" {
  type        = number
  description = "A number that represents the number of NAT gateways required for the environment. For dev and test, it should not be more than 1, while for production, it should equal the number of availability zones. This is only applicable for VPCs with an internet gateway."
}

variable "cluster_version" {
  type        = string
  description = "A string that defines the version of the EKS cluster."
}

variable "jenkins_admin_user" {
  type        = string
  description = "A string that indicates the admin user of the Jenkins application."
}

variable "jenkins_admin_password" {
  type        = string
  description = "A string that represents the admin password of the Jenkins application."
}

variable "group_instance_type" {
  type        = list(string)
  description = "A list of strings that specifies the instance type of the worker group nodes, which must be large enough to support the amount of NICS assigned to pods."
}

variable "group_ami_type" {
  type        = string
  description = "A string that defines the AMI type of the worker group nodes."
}

variable "group_platform_type" {
  type        = string
  description = "A string that specifies the platform type of the worker group nodes."
}

variable "group_min_size" {
  type        = number
  description = "A number that represents the minimum number of nodes."
}

variable "group_desired_size" {
  type        = number
  description = "A number that indicates the desired number of nodes."
}

variable "group_max_size" {
  type        = number
  description = "A number that defines the maximum number of nodes."
}

variable "group_capacity_type" {
  type        = string
  description = "A string that indicates the instance capacity type, which could be spot, on-demand, or dedicated."
}