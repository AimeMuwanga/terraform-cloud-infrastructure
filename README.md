# AWS Cloud Infrastructure with Terraform

This project automates the deployment of a secure, modularized AWS environment including a VPC, an EC2 application server running Docker, and a managed PostgreSQL database.

## Architecture
- **VPC**: Custom 10.0.0.0/16 network with Public and Private subnets across 2 Availability Zones.
- **Compute**: EC2 Instance (t2.micro) with Docker pre-installed via User Data.
- **Database**: Amazon RDS (PostgreSQL) isolated in private subnets.
- **Security**: Strict Security Group rules allowing only HTTP/SSH to the web tier and internal traffic to the DB.

## Getting Started

### Prerequisites
1. [Terraform](https://www.terraform.io/downloads.html) installed.
2. [AWS CLI](https://aws.amazon.com/cli/) configured with `AdministratorAccess`.

### Deployment
1. Initialize the project:
   ```bash
   terraform init 

2. View the deployment plan:
   
   terraform plan 

3. Apply the configuration:

   terrafrom apply 

### Project Structure
/main & /modules/vpc: Networking logic (Subnets, IGW, Route Tables).

/modules/security: Firewall rules (Security Groups).

/modules/deploy: Compute (EC2) and Database (RDS) resources.
