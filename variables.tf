##########################################
# Define layer variables
##########################################

variable "bucket_base_name" {
  description = "The prefix name for all s3 buckets in this module"
  type        = string
  default     = "pre-commit-demo-s3-bucket"
}
