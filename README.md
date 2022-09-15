# Kubernetes DevOps Environment

This repo is code and instructions to help you deploy a Kubernetes cluster and supporting infrastructure. Intended for educational purposes and kept as simple as possible.

This is an ever-work-in-progress project under continual improvement.

# Table of Contents

--- placeholder ---

# Cluster Provisioning - Terraform

Infrastructure-as-code is preferred (though CLI has it's place). We choose Terraform and Azure to begin with.

## Azure Kubernetes Concepts

* Terraform API calls will be issued by an Azure "service principal", an application identity.
* Almost all Azure resources exist inside "resource groups".
* An Azure kubernetes cluster and container registry must be paired to interact with each other.

## Prerequisites

* Object storage blob ("bucket") for remote state storage.
* Service principal permissioned to run API calls from Terraform.
* Key vault (secrets management) for Terraform and other purposes.

section in progress...





- CLI commands: eksctl cli (ALB controller, nginx ingress, nodeport, Route53 external DNS controller). az aks cli.

- See [Terraform AWS EKS Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints), [Hashicorp Terraform EKS module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)

- Install az cli [link](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Set up Terraform for Azure (including service principal and remote state storage account key) [link](https://docs.microsoft.com/en-us/azure/developer/terraform/authenticate-to-azure?tabs=bash)

az ad sp create-for-rbac --name <service_principal_name> --role Contributor --scopes /subscriptions/<subscription_id>

# To-Do List

Remaining items:

* Kubernetes
  * Private/advanced cluster
  * SSL certificate
  * Authentication e.g. OpenID connect, LDAP
  * DNS
  * RBAC policies and auditing
  * Secrets
  * Helm Charts
  * AWS cluster
  * CLI cluster creation (incl. eksctl)
* CI/CD
  * GitHub Actions Terraform CD pipeline
  * GitHub Actions Image build and push CI pipeline
  * GitHub Actions Application deploy CD pipeline (kubectl)
  * Argo CD
* Configuration Management
  * Ansible node configuration  
* Backups of workloads
* Observability/Monitoring


# Reference Material (unsorted)

- [Fast Kubernetes](https://github.com/omerbsezer/Fast-Kubernetes)
- [Azure Samples - AKS Voting App](https://github.com/Azure-Samples/aks-voting-app)
- [Istio BookInfo App](https://github.com/istio/istio/tree/master/samples/bookinfo/platform/kube)
- [12 Factor App meets Kubernetes](https://www.redhat.com/architect/12-factor-app-containers)
- [Provisioning Kubernetes clusters on AWS with Terraform and EKS](https://learnk8s.io/terraform-eks)
- [Terraform AWS EKS Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints)
- [Living with Kubernetes: Debug Clusters in 8 Commands](https://thenewstack.io/living-with-kubernetes-debug-clusters-in-8-commands/)
- Weaveworks eksctl[1](https://eksctl.io/)[2](https://github.com/weaveworks/eksctl)
- [Hashicorp Terraform EKS module](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest), [Tutorial](https://learn.hashicorp.com/tutorials/terraform/eks)