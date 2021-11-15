variable "region" {
  description = "Region associated with AWS provider"
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Environment associated with deployment"
  type        = string
  default     = "dev"
}

variable "team" {
  description = "Team associated with resources"
  type        = string
  default     = "Web"
}

variable "maintainer" {
  description = "Maintainer of deployment"
  type        = string
  default     = "MrHenryD"
}

variable "python_runtime" {
  description = "Python runtime environment"
  type        = string
  default     = "python3.8"
}