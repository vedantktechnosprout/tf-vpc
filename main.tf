terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  credentials = base64decode(var.gcp_credentials)
  project     = var.project_id
  region      = var.region
}

# Create a VPC network
resource "google_compute_network" "main_vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  description             = "Custom VPC network created with Terraform Ent"
}

# Create a subnet inside the VPC
resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  region        = var.region
  network       = google_compute_network.main_vpc.id
  ip_cidr_range = var.subnet_cidr
}

