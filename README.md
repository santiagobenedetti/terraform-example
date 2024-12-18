# Terraform example

This is a simple example of how to use Terraform to create a SG and an EC2 instance in AWS.

## Structure

The repo has two folders `test` and `prod`, each of them represent an environment. In this case the testing and production environments. Inside each folder there is a `main.tf` file that contains the configuration for the resources that will be created. To execute the commands you should be inside the folder of the environment you want to create the resources.

## Pre-requisites

- Terraform installed
- AWS account
- AWS CLI installed and configured
- AWS credentials in the `terraform.tfvars` file

## Commands

```bash
# Initializes the working directory and downloads the provider plugins
terraform init

# Validates the configuration files in a directory
terraform validate

# Formats the configuration files in a directory
terraform fmt

# Generates an execution plan and shows what will do
terraform plan

# Builds or changes infrastructure, before applying the changes, terraform will show the execution plan and ask for confirmation
terraform apply

# Destroys the infrastructure
terraform destroy
```
