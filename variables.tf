variable "name" {}

variable "availability_zones" {
  type = list(string)
}

variable "vpc" {
  type = object({
    id         = string
    cidr_block = string
  })
}

variable "subnet_newbits" {
  default  = 8
  nullable = false
}

variable "subnet_offset" {
  default  = 0
  nullable = false
}

variable "map_public_ip_on_launch" {
  default  = true
  nullable = false
}

variable "tags" {
  default  = {}
  nullable = false
}

variable "route_table_ids" {
  type     = set(string)
  default  = []
  nullable = false
}