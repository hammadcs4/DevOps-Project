# Comparative Analysis of Infrastructure as Code Tools and Cloud Provider Cost Analysis

## Abstract

This paper compares Terraform, AWS CloudFormation, and Azure ARM Templates as Infrastructure as Code (IaC) tools. It also analyzes costs for identical infrastructure across AWS, Azure, and GCP.

## IaC Tools Comparison

### Terraform
- **Pros**: Multi-cloud support, declarative syntax, large community, state management.
- **Cons**: Learning curve, complex for beginners.
- **Use Case**: Multi-cloud deployments.

### AWS CloudFormation
- **Pros**: Native AWS integration, JSON/YAML templates, automatic rollback.
- **Cons**: AWS-only, verbose syntax.
- **Use Case**: AWS-centric environments.

### Azure ARM Templates
- **Pros**: Native Azure integration, JSON templates, resource group management.
- **Cons**: Azure-only, complex JSON.
- **Use Case**: Azure-centric environments.

### Recommendation
Terraform for multi-cloud, CloudFormation for AWS, ARM for Azure.

## Cost Analysis

For identical infrastructure (1 VM, 10GB storage, basic networking):

### AWS (us-east-1)
- EC2 t2.micro: $0.0116/hour (750 free hours)
- EBS 10GB: $1/month
- VPC: Free
- Total monthly: ~$8.70 (after free tier)

### Azure (East US)
- B1S VM: $0.012/hour (750 free hours)
- Managed Disk 10GB: $0.24/month
- VNet: Free
- Total monthly: ~$7.20 (after free tier)

### GCP (us-central1)
- f1-micro: Always free (limited)
- Persistent Disk 10GB: $0.40/month
- VPC: Free
- Total monthly: $0.40 (always free tier)

GCP offers the lowest cost for basic workloads.