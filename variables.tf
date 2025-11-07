variable "subscription_id" { type = string }
variable "tenant_id"       { type = string }

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-appsec-tools"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

variable "prefix" {
  description = "Prefix for resources"
  type        = string
  default     = "appsec-tools"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_ssh_key" {
  description = "SSH public key to access the VM"
  type        = string
}

variable "vm_size" {
  description = "VM size for SonarQube + Dependency-Track"
  type        = string
  # SonarQube es tragón, mejor una D2s_v3 o Standard_B2ms
  default     = "Standard_B2ms"
}
