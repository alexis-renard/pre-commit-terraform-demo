# pre-commit-terraform-demo

A lightweight demo repo to present pre-commit to some collegues, with a specific deepdive on the terraform development workflow.

3 branches are available for different scenarios 
* `0-pre-commit`
    * First manipulations and checks done on a static file (json) and basic python script
* `1-pre-commit-terraform`
    * Our first basic terraform repo ! The code is verified and automatically formated thanks to our first pre-commit hooks.
* `2-pre-commit-terraform-with-docs-and-sec`
    * Finally adding some security checks and automatic doc generation.

## pre-commit install 
### Ubuntu 20.04

* pre-commit core :
    ```shell
    sudo apt update
    sudo apt install -y unzip software-properties-common python3 python3-pip
    python3 -m pip install --upgrade pip
    pip3 install -U pre-commit # be sure to have $HOME/.local/bin added to your $PATH
    ```
* pre-commit terraform hooks :
   ```shell
    pip3 install -U checkov
    curl -L "$(curl -s https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest | grep -o -E -m 1 "https://.+?-linux-amd64.tar.gz")" > terraform-docs.tgz && tar -xzf terraform-docs.tgz terraform-docs && rm terraform-docs.tgz && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
    curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
    curl -L "$(curl -s https://api.github.com/repos/aquasecurity/tfsec/releases/latest | grep -o -E -m 1 "https://.+?tfsec-linux-amd64")" > tfsec && chmod +x tfsec && sudo mv tfsec /usr/bin/
    sudo apt install -y jq
   ```
    * Install instructions highly inspired by : https://github.com/antonbabenko/pre-commit-terraform

---

:rocket: Feel free to contribute ! Keep up in the meantime, :fox_face: