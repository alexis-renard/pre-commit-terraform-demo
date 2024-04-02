#####################################
# Define layer terraform & provider versions
#####################################

terraform {
  # Set version for terraform
  required_version = "~> 1.0"

  # Set version for providers
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
