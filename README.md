# kubernetes

Enterprise-level Kubernetes, a work-in-progress project.

## Table of Contents

--- placeholder ---

## Kubernetes Cluster Provisioning
- CLI commands: eksctl cli (ALB controller, nginx ingress, nodeport, Route53 external DNS controller). az aks cli.
- Idempotent: Terraform
- See [Terraform AWS EKS Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints), [https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest](Hashicorp Terraform EKS module)

## Load Balancing/DNS

## Authentication
- e.g. OpenID connect, LDAP

## RBAC policies and auditing

## Backing up workloads

## Deploying apps

## Secrets

## Monitoring, Logging & Observability

## CI/CD
- GitHub Actions, Helm
- Argo CD



## Reference Material

- [Fast Kubernetes](https://github.com/omerbsezer/Fast-Kubernetes)
- [Azure Samples - AKS Voting App](https://github.com/Azure-Samples/aks-voting-app)
- [Istio BookInfo App](https://github.com/istio/istio/tree/master/samples/bookinfo/platform/kube)
- [12 Factor App meets Kubernetes](https://www.redhat.com/architect/12-factor-app-containers)
- [Provisioning Kubernetes clusters on AWS with Terraform and EKS](https://learnk8s.io/terraform-eks)
- [Terraform AWS EKS Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints)
- [Living with Kubernetes: Debug Clusters in 8 Commands](https://thenewstack.io/living-with-kubernetes-debug-clusters-in-8-commands/)
- Weaveworks eksctl[1](https://eksctl.io/)[2](https://github.com/weaveworks/eksctl)
- [https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest](Hashicorp Terraform EKS module), [Tutorial](https://learn.hashicorp.com/tutorials/terraform/eks)