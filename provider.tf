###############################################################################
# Define layer provider
###############################################################################

terraform {
  # Set version for terraform
  required_version = "~> 1.0.0"

  # Set version for providers
  required_providers {
    aws = "~> 4.0"
  }
}
