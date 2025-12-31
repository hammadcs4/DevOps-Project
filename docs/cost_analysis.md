# Cost Analysis

## AWS
- Free tier: 750 hours EC2, 5GB S3, etc.
- EKS: ~$0.10/hour per cluster
- RDS: ~$0.017/hour for t3.micro

## Azure
- Free tier: 750 hours B1 VM, 5GB storage
- AKS: ~$0.10/hour per cluster
- Database: ~$0.02/hour

## GCP
- Free tier: 2 million requests, 5GB storage
- GKE: ~$0.10/hour per cluster
- Cloud SQL: ~$0.015/hour

## Total for identical setup
- AWS: ~$50/month
- Azure: ~$45/month
- GCP: ~$40/month

## Notes
Prices are approximate and do not include additional costs like data transfer, backup storage, or optional services.

The comparison assumes small-scale, development-level usage, not enterprise deployments.

Free tiers are considered to reduce costs, but actual usage beyond limits will increase monthly charges.

