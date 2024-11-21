# Fulcrum2

**Fulcrum2** is a cost-efficient AWS infrastructure project managed with Terraform. 
It supports a scalable DynamoDB database, Lambda functions, API Gateway, and Redis ElastiCache for caching.

## Features
- **AWS Infrastructure**: VPC, S3 for state, DynamoDB, API Gateway, Lambda, Redis.
- **CI/CD**: GitHub Actions for deployment and rollback.
- **Multi-region Support**: us-east-1 and us-west-2.

## Setup Instructions

### Prerequisites
- Install [Terraform](https://www.terraform.io/).
- Install [AWS CLI](https://aws.amazon.com/cli/).
- Install [zsh](https://www.zsh.org/).

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/johnboyce/Fulcrum2.git
   cd Fulcrum2
   ```

2. Initialize Terraform:
   ```bash
   cd terraform
   terraform init
   ```

3. Deploy Infrastructure:
   ```bash
   terraform apply
   ```

4. Deploy Lambda Code using GitHub Actions.

## Repository Structure
- **terraform/**: Infrastructure code.
- **lambda/**: Lambda function code.
- **.github/workflows/**: CI/CD workflow.
- **scripts/**: Helper scripts.
