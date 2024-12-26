# Overview

This Terraform module manages GitHub Actions environment variables and secrets for a specified repository and environment. It sets essential variables such as the Azure Subscription ID, Entra ID Tenant and Client IDs, and conditionally includes a client secret if provided. By automating the configuration of these environment-specific settings, the module ensures secure and consistent management of credentials and configuration values for your GitHub Actions workflows.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_environment_secret.client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_secret) | resource |
| [github_actions_environment_variable.client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |
| [github_actions_environment_variable.subscription_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |
| [github_actions_environment_variable.tenant_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_environment_variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The Azure client ID to be set as an environment variable in GitHub Actions. | `string` | n/a | yes |
| <a name="input_client_id_label"></a> [client\_id\_label](#input\_client\_id\_label) | The label/name for the client ID environment variable in GitHub Actions. | `string` | `"ARM_CLIENT_ID"` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The Azure client secret to be set as a secret in GitHub Actions. If not provided, the secret will not be created. | `string` | `null` | no |
| <a name="input_client_secret_label"></a> [client\_secret\_label](#input\_client\_secret\_label) | The label/name for the client secret in GitHub Actions secrets. | `string` | `"ARM_CLIENT_SECRET"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The GitHub Actions environment (e.g., 'production', 'staging') where the variables and secrets will be set. | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | The name of the GitHub repository where the environment variables and secrets will be configured. | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | The Azure subscription ID to be set as an environment variable in GitHub Actions. | `string` | n/a | yes |
| <a name="input_subscription_id_label"></a> [subscription\_id\_label](#input\_subscription\_id\_label) | The label/name for the subscription ID environment variable in GitHub Actions. | `string` | `"ARM_SUBSCRIPTION_ID"` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The Entra ID tenant ID to be set as an environment variable in GitHub Actions. | `string` | n/a | yes |
| <a name="input_tenant_id_label"></a> [tenant\_id\_label](#input\_tenant\_id\_label) | The label/name for the Entra ID Tenant ID environment variable in GitHub Actions. | `string` | `"ARM_TENANT_ID"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->