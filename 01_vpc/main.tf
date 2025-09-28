module "vpc" {
    source = "git::https://github.com/mohammadsyed397/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    public_cidr_blocks = var.public_subnet_cidrs
    private_cidr_blocks = var.private_subnet_cidrs
    database_subnet_blocks = var.database_subnet_cidrs
    is_peering_required = true
    
    

}