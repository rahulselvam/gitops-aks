provider "aws" {
#  region = var.aws_region
}

provider "kubernetes" {
  # Assuming you're using the default kubeconfig path
  config_path = "~/.kube/config"
}