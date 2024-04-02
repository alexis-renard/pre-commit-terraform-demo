###############################################################################
# S3 bucket example
###############################################################################

#===================================================
# Non compliant bucket
#===================================================

resource "aws_s3_bucket" "non_compliant" {
  bucket = "${var.bucket_base_name}-non-compliant"
  tags = {
    secret = "AASKJNDSQKJ531QSD12021" # this is not really a secret you hacker :)
  }
}

#===================================================
# Compliant bucket
#===================================================

resource "aws_kms_key" "compliant" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

#trivy:ignore:avd-aws-0089
resource "aws_s3_bucket" "compliant" {
  bucket = "${var.bucket_base_name}-compliant"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.compliant.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.compliant.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.compliant.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "compliant" {
  bucket = aws_s3_bucket.compliant.id

  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true
}
