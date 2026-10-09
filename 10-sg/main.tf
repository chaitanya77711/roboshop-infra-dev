module "sg" {
    count = length(var.sg_names)
    source = "../../terraform-aws-sg"
    project = var.project
    environment = var.environment
    sg-name = var.sg_names[count.index]
    vpc-id = local.vpc_id
}