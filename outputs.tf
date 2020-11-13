##############################################################
# Define layer outputs
##############################################################

output "ec2_instance_arn" {
  description = "EC2 instance ARN"
  value       = aws_instance.web.arn
}

output "ec2_instance_id" {
  description = "EC2 instance id"
  value       = aws_instance.web.id
}
