variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "demo-terraform-docker"
}

variable "image_name" {
  description = "Value of the name for the Docker image"
  type        = string
  default     = "demo-terraform-docker"
}

variable "internal_port" {
  description = "Value of the internal port number for the Docker container"
  type        = string
  default     = "80"
}

variable "external_port" {
  description = "Value of the external number for the Docker container"
  type        = string
  default     = "80"
}
