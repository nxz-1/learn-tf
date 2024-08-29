locals {
  subnets = {
    for subnet in var.subnets : "${subnet.subnet_region}/${var.environment}-${subnet.subnet_name}" => subnet
  }
}