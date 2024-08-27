resource "google_compute_network" "vpc_network" {
  project                 = "terraform-project-433611"
  name                    = "my-dev-network"
  auto_create_subnetworks = false
  mtu                     = 1500
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnet" {
  name                     = "test-subnet-1"
  ip_cidr_range            = "10.0.1.0/24"
  region                   = "asia-south1"
  network                  = google_compute_network.vpc_network.id
  private_ip_google_access = false
}