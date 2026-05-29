# AWS Terraform Setup

This Terraform configuration deploys an AWS infrastructure with:

- A private VPC using CIDR `192.168.0.0/16`
- One public subnet and one private subnet
- An Internet Gateway for public subnet access
- A NAT Gateway in the public subnet for private subnet outbound internet access
- A private EC2 instance running Apache installed via user data
- A security group allowing SSH access on port 22 and all outbound traffic
- A Route53 A record pointing to the instance IP

## File structure

- `provider.tf` - Terraform provider configuration
- `vpc.tf` - VPC, public/private subnets, route tables, internet gateway, NAT gateway, and associations
- `sg.tf` - Security group allowing SSH inbound and all outbound traffic
- `ec2.tf` - EC2 instance configuration and Apache user data bootstrap
- `route53.tf` - Route53 zone data source and A record creation
- `variables.tf` - Configurable variables for region, CIDR ranges, SSH CIDR, and DNS settings
- `outputs.tf` - Outputs for the instance private IP and Route53 record

## Notes

- The EC2 instance is launched in the private subnet without a public IP.
- SSH access is restricted to the CIDR configured in `var.ssh_cidr`.
- Route53 record creation requires an existing hosted zone matching `var.zone_name`.
