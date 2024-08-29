project_id = "terraform-project-433611"
environment = "dev"
network_name = "a4l-network"
auto_create_subnetworks = false
mtu = "1460"
routing_mode = "REGIONAL"
subnets = [
  {
    subnet_name = "mumbai-public-subnet"
    subnet_cidr = "10.0.11.0/24"
    subnet_region = "asia-south1"
    private_ip_google_access = true
  },
  {
    subnet_name = "mumbai-private-subnet"
    subnet_cidr = "10.0.12.0/24"
    subnet_region = "asia-south1"
    private_ip_google_access = true
  },
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