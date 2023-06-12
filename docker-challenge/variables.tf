variable "container_name" {
  description = "Value of the name for the Docker container"
  type    = string
  default = "AltaResearchWebService"
}

variable "internal_port" {
  description = "Value of the port number for the Docker container"
  type    = number
  default = 9876
}
variable "external_port" {
  description = "Value of the external port number for the Docker container"
  type    = number
  default = 5432
}

