terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
  backend "s3" {
    bucket         = "poorops-tfstate"
    key            = "poorops-tfstate/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tfstate"
  }
}

provider "kubernetes" {
  config_path = "C:\\Users\\Mr_Zh\\.kube\\config"
}
