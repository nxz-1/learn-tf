module "networking" {
  source = "../terraform/modules/networking"
  project_id = var.project_id
  environment = var.environment
  network_name = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu = var.mtu
  routing_mode = var.routing_mode
  subnets = [
    {
      subnet_name = "delhi-public-subnet"
      subnet_cidr = "10.0.21.0/24"
      subnet_region = "asia-south2"
      private_ip_google_access = true
    },
    {
      subnet_name = "delhi-private-subnet"
      subnet_cidr = "10.0.22.0/24"
      subnet_region = "asia-south2"
      private_ip_google_access = true
    }
  ]
}