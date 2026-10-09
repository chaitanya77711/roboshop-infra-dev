module "vpc" {
  source = "../../terraform-AWS-VPC"
  project = var.project
  environment = var.environment
  vpc-final-tags      = {}
  igw-final-tags      = {}
  is_peering_required = true
}
