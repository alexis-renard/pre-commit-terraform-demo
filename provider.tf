#####################################
# Define layer provider
#####################################
terraform {
  # Set version for terraform
  required_version = ">= 0.12, < 0.13"

  # Set version for providers
  required_providers {
    aws = ">= 2.0"
  }
}
