terraform {
  backend "gcs" {
    bucket = "gcp_t2"
    prefix = "enviroment/dev"
  }
}

