##############################################################
# Define layer backend
##############################################################

terraform {
  # Use S3 as backend

  backend "s3" {
    bucket         = "bpi-fr-tfstates"
    key            = "tflayers/00-demo-iac/root.eu-west-3/.tfstate"
    region         = "eu-west-3"
    encrypt        = true
    kms_key_id     = "arn:aws:kms:eu-west-3:373983172505:key/7835ae80-d21a-40a9-9126-0c1158f4880e"
    dynamodb_table = "bpi-fr-tfstates-lock"
  }
}
