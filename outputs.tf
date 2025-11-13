output "vpc_name" {
  description = "The name of the created VPC network"
  value       = google_compute_network.main_vpc.name
}

output "subnet_name" {
  description = "The name of the created subnet"
  value       = google_compute_subnetwork.subnet.name
}

output "subnet_ip_range" {
  description = "CIDR range of the subnet"
  value       = google_compute_subnetwork.subnet.ip_cidr_range
}

output "vpc_self_link" {
  description = "The self-link of the VPC"
  value       = google_compute_network.main_vpc.self_link
}
