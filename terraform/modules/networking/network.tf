resource "google_compute_network" "vpc_network" {
  project                 = var.project_id
  name                    = "${var.environment}-${var.network_name}"
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu                     = var.mtu
  routing_mode            = var.routing_mode
}

resource "google_compute_subnetwork" "subnet" {
  project                  = var.project_id
  network                  = google_compute_network.vpc_network.id
  
  for_each                 = local.subnets
  name                     = each.value.subnet_name
  ip_cidr_range            = each.value.subnet_cidr
  region                   = each.value.subnet_region
  private_ip_google_access = each.value.private_ip_google_access
}

# resource "google_compute_router" "router" {
#   name    = "prod-a4l-network-router"
#   region  = google_compute_subnetwork.subnet.region
#   network = google_compute_network.vpc_network.id
# }

# resource "google_compute_router_nat" "nat" {
#   name                               = "prod-a4l-network-router-nat"
#   router                             = google_compute_router.router.name
#   region                             = google_compute_router.router.region
#   nat_ip_allocate_option             = "AUTO_ONLY"
#   source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

#   log_config {
#     enable = true
#     filter = "ERRORS_ONLY"
#   }
# }