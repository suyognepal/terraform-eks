# terraform-eks
# terraform-eks

This is a repo with all the files for setting up an EKS cluster using terraform.

- [x] VPC
- [x] Subnets
- [x] Internet Gateway
- [x] NAT Gateway
- [x] Route Tables
- [x] EKS Cluster
- [x] EKS Node Group
- [x] EKS Roles
- [x] EKS Addons
- [x] EKS Pod Identity
- [x] EKS Metrics Server
- [x] EKS Cluster Autoscaler
- [x] EKS Pod Identity Webhook
- [x] AWS Load Balancer Controller
## Run Commands

- `terraform init`
- `terraform apply`
## locals.tf
This file defines the local variables used in the terraform configuration files.

- `env`: The environment name. Default is `staging`.
- `region`: The region where the resources will be created. Default is `us-east-1`.
- `eks_name`: The name of the EKS cluster. Default is `demo`.
- `eks_version`: The version of Kubernetes to use for the EKS cluster. Default is `1.31`.
- `instance_types`: The types of EC2 instances to use for the EKS node group. Default is `["c5a.xlarge"]`.
