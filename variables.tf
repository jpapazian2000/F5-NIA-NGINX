variable "region" {
 type = string
}

variable "prefix" {
 description = "prefix for all instaces created"
 type = string
}

variable "nginx_servers" {
   description = "number of server to start, 1 minimal and 4 maximum"
   type = number

   validation {
     condition  = (
      var.nginx_servers >= 1 &&
      var.nginx_servers <= 4
      )
     error_message = "The number of nginx servers must be an integer between 1 and 4."
  }
}


