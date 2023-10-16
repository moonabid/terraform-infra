### Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket  = "futuion-s3--terraform-backend"
    key     = "mfh-infra.tfstate"
    region  = "ap-south-1"
    profile = "mfh"
  }
}
