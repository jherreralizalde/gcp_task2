module "gke_task2" {
  source                  = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"
  project_id              = "miprimerproyecto-333317"
  name                    = "gke-task2-gke"
  regional                = false
  region                  = "us-central1"
  zones                   = ["us-central1-b"]
  network                 = module.vpc.network_name
  subnetwork              = "gke-subnet"
  ip_range_pods           = "gke-subnet-secondary-01"
  ip_range_services       = "gke-subnet-service"
  create_service_account  = false
  service_account         = "account-t2@miprimerproyecto-333317.iam.gserviceaccount.com"
  enable_private_endpoint = false
  enable_private_nodes    = true
  master_ipv4_cidr_block  = "172.16.0.0/28"

  node_pools = [
    {
      name            = "pool-01"
      min_count       = 1
      max_count       = 2
      service_account = "account-t2@miprimerproyecto-333317.iam.gserviceaccount.com"
      machine_type    = "n1-standard-1"
      auto_upgrade    = true
    }
  ]
  #master_authorized_networks = [
  #  {
  #  cidr_block   = "0.0.0.0/0"
  #    display_name = "VPC"
  #  }
  #]
}

