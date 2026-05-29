output "instance_private_ip" {
  description = "Private IP address of the Apache EC2 instance"
  value       = aws_instance.apache.private_ip
}

output "route53_record" {
  description = "Route53 A record created for the instance"
  value       = aws_route53_record.apache.fqdn
}
