variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type        = string
  default     = "ExampleNginxContainer"
}

variable "port_internal"{
    description = "Value of the internal port number for the Docker container"
    type = number
    default = 80
}

variable "port_external"{
    description = "Value of the external  port number for the Docker container"
    type = number
    default = 2224
}
