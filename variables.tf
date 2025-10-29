variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the app service plan"
  type        = string
}

variable "app_service_name" {
  description = "The name of the app service"
  type        = string
}

variable "app_service_plan_sku" {
  description = "The SKU for the app service plan (e.g., B1, B2, S1, P1v2)"
  type        = string
}

variable "node_version" {
  description = "The Node.js version for the app service"
  type        = string
}