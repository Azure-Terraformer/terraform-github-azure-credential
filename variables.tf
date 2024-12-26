variable "repository" {
  type        = string
  description = "The name of the GitHub repository where the environment variables and secrets will be configured."
}
variable "environment" {
  type        = string
  description = "The GitHub Actions environment (e.g., 'production', 'staging') where the variables and secrets will be set."
}
variable "subscription_id" {
  type        = string
  description = "The Azure subscription ID to be set as an environment variable in GitHub Actions."
}
variable "tenant_id" {
  type        = string
  description = "The Entra ID tenant ID to be set as an environment variable in GitHub Actions."
}
variable "client_id" {
  type        = string
  description = "The Azure client ID to be set as an environment variable in GitHub Actions."
}
variable "client_secret" {
  type        = string
  default     = null
  description = "The Azure client secret to be set as a secret in GitHub Actions. If not provided, the secret will not be created."
}
variable "subscription_id_label" {
  type        = string
  default     = "ARM_SUBSCRIPTION_ID"
  description = "The label/name for the subscription ID environment variable in GitHub Actions."
}
variable "tenant_id_label" {
  type        = string
  default     = "ARM_TENANT_ID"
  description = "The label/name for the Entra ID Tenant ID environment variable in GitHub Actions."
}
variable "client_id_label" {
  type        = string
  default     = "ARM_CLIENT_ID"
  description = "The label/name for the client ID environment variable in GitHub Actions."
}
variable "client_secret_label" {
  type        = string
  default     = "ARM_CLIENT_SECRET"
  description = "The label/name for the client secret in GitHub Actions secrets."
}
