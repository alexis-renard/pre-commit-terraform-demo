##############################################################
# Define layer outputs
##############################################################

output "ec2_instance" {
  description = "EC2 instance ARN"
  value = aws_instance.web.arn
}
