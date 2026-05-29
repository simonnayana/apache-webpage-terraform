variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "192.168.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "192.168.2.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_pair_name" {
  description = "Existing AWS key pair name for SSH access"
  type        = string
}

variable "ssh_cidr" {
  description = "CIDR block allowed to SSH to the instance"
  type        = string
  default     = "0.0.0.0/0"
}

variable "zone_name" {
  description = "Route53 hosted zone name where the record will be created"
  type        = string
  default     = "apache.com."
}

variable "zone_private" {
  description = "Whether the hosted zone is a private Route53 hosted zone"
  type        = bool
  default     = false
}

variable "record_name" {
  description = "DNS record name to point to the instance IP"
  type        = string
  default     = "test.apache.com"
}
