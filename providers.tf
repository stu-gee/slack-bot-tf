terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.25.0"
    }

    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "google" {
  project = var.project
  region  = "us-central1"
  zone    = "us-central1-c"
}

provider "random" {

}