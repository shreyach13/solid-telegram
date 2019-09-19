variable "owner" {
  default = "ericechter"
}

variable "server_port" {
  description = "The port the server will use for HTTPD requests"
  default     = "8080"
}

variable "my_security_group" {
}
