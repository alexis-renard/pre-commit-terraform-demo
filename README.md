# Demo pre-commit terraform with doc and sec

## Table of content
<!--TOC-->
<!--TOC-->

## Demo workflow
* Show the pre-commit run working : `pre-commit run --all`
* Add the `trivy` hook and run it again
    * Fix or comment the non compliant bucket
* Add the `detect-secrets` hook and run it again
    * Add a potential secret as variable default
* Add `terraform_docs` and `md-toc` hooks and run it again

## Terraform module overview
This module contains a compliant and a non compliant s3 bucket resources.
The compliant one includes a `tfsec:ignore` comment.

You want more ? An example is also available for deploying an EC2 instance with some security groups under the `other-code-examples/` folder. Uncomment the exclude from the `.pre-commit-config.yaml` to check how secure the given code is.

## Layer terraform documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
