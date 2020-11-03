# Demo pre-commit with doc and sec

## Table of Content

<!-- TOC -->

## Layer terraform documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Pre-commit
To facilitate testing before committing to gitlab, you have the option of running automated tests with pre-commit  before committing to gitlab, you can run automated tests with pre-commit. Here are the main hooks applied in this repository (`.pre-commit-config.yaml`):

##### terraform_tflint
To ensure that the terraform code does not present any problem of typing or forgetting,I add terraform_tflint, it will allow in particular to reassemble the parts of the code to depreciate

##### terraform_fmt
To ensure an automatic correction of the terraform code and keep a good indentation I add terraform-fmt

##### terraform_docs
For compliance, I added the terraform_docs tools, this will update the readme automatically with terraform inputs and outputs


### 1. Install dependencies
* [`GO`](https://golang.org/doc/install) required > go 1.12
* [`pre-commit`](https://pre-commit.com/#install)
* [`terraform-docs`](https://github.com/segmentio/terraform-docs) required for `terraform_docs` hooks. `GNU awk` is required if using `terraform-docs` older than 0.8.0 with Terraform 0.12.
* [`TFLint`](https://github.com/terraform-linters/tflint) required for `terraform_tflint` hook.

#### MacOS

```bash
brew tap liamg/tfsec
brew install pre-commit gawk terraform-docs tflint tfsec coreutils
```

#### Ubuntu

```bash
sudo apt install python3-pip gawk && pip3 install pre-commit
curl -Lo ./terraform-docs https://github.com/terraform-docs/terraform-docs/releases/download/v0.10.0-rc.1/terraform-docs-v0.10.0-rc.1-$(uname | tr '[:upper:]' '[:lower:]')-amd64 && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
```
