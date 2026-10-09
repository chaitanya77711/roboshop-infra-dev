resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_id" {
  name  = "/${var.project}/${var.environment}/public_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.public_subnet_id)
}

resource "aws_ssm_parameter" "private_subnet_id" {
  name  = "/${var.project}/${var.environment}/priavate_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.private_subnet_id)
}

resource "aws_ssm_parameter" "data-base_subnet_id" {
  name  = "/${var.project}/${var.environment}/data-base_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.data-base_subnet_id)
}

# resource "aws_ssm_parameter" "public_route_table_id" {
#   name  = "/${var.project}/${var.environment}/public_route_table_id"
#   type  = "StringList"
#   value = join(",", module.vpc.public_route_table_id)
# }

# resource "aws_ssm_parameter" "private_route_table_id" {
#   name  = "/${var.project}/${var.environment}/private_route_table_id"
#   type  = "StringList"
#   value = join(",", module.vpc.private_route_table_id)
# }

# resource "aws_ssm_parameter" "data-base_table_id" {
#   name  = "/${var.project}/${var.environment}/data-base_route_table_id"
#   type  = "StringList"
#   value = join(",", module.vpc.data-base_route_table_id)
# }