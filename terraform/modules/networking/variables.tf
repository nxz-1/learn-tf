variable "project_id" {
  type = string
}

variable "environment" {
  type = string
}

variable "network_name" {
  type = string
}

variable "auto_create_subnetworks" {
  type = bool
}
variable "mtu" {
  type    = number
  default = 1460
}
variable "routing_mode" {
  type    = string
  default = "REGIONAL"
}

# Complex
# [
#   {
#   "key1": "value1"
#   },
#   {
#   "key1": "value1"
#   }
#   {
#   "key1": "value1"
#   }
# ]

variable "subnets" {
  type = list(object({
    subnet_name              = string
    subnet_cidr              = string
    subnet_region            = string
    private_ip_google_access = string
  }))
}

