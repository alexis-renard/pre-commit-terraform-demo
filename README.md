# Demo pre-commit terraform with doc and sec

## Table of content
<!--TOC-->

- [Demo pre-commit terraform with doc and sec](#demo-pre-commit-terraform-with-doc-and-sec)
  - [Table of content](#table-of-content)
  - [Demo workflow](#demo-workflow)
  - [Layer terraform documentation](#layer-terraform-documentation)
  - [Pre-commit](#pre-commit)

<!--TOC-->

This module contains a compliant and a non compliant s3 bucket resources. (the compliant one includes a tfsec:ignore)

## Demo workflow
* Show the pre-commit run working : `pre-commit run --all`
* Add the `tfsec` hook and run it again
* Add the `terraform_docs` hook and run it again

## Layer terraform documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Pre-commit
To facilitate testing before committing to the git repository, you have the option of running automated tests with pre-commit. You can check the list and versions in the configuration file : `.pre-commit-config.yaml`.
