# Demo pre-commit terraform with doc and sec

## Table of content
<!--TOC-->
<!--TOC-->

## Demo workflow
* Show the pre-commit run working : `pre-commit run --all`
* Add the `tfsec` hook and run it again
    * Fix or comment the non compliant bucket
* Add the `detect-secrets` hook and run it again
    * Add a potential secret as variable default
* Add `terraform_docs` and `md-toc` hooks and run it again

## Terraform module overview
This module contains a compliant and a non compliant s3 bucket resources.
The compliant one includes a tfsec:ignore)

## Layer terraform documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
