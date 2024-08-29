project_id = "terraform-project-433611"
environment = "prod"
network_name = "a4l-network"
auto_create_subnetworks = false
mtu = "1460"
routing_mode = "REGIONAL"
subnets = [
  {
    subnet_name = "mumbai-public-subnet"
    subnet_cidr = "10.0.61.0/24"
    subnet_region = "asia-south1"
    private_ip_google_access = true
  },
  {
    subnet_name = "mumbai-private-subnet"
    subnet_cidr = "10.0.62.0/24"
    subnet_region = "asia-south1"
    private_ip_google_access = true
  },
  {
    subnet_name = "delhi-public-subnet"
    subnet_cidr = "10.0.71.0/24"
    subnet_region = "asia-south2"
    private_ip_google_access = true
  },
  {
    subnet_name = "delhi-private-subnet"
    subnet_cidr = "10.0.72.0/24"
    subnet_region = "asia-south2"
    private_ip_google_access = true
  }
]