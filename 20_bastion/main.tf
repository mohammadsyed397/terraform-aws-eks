resource "aws_instance" "bastion" {
    ami = local.ami_id
    vpc_security_group_ids = [local.bastion_sg_id]
    subnet_id = local.public_subnet_id
    instance_type = "t3.micro"
    tags = merge (
        local.common_tags,{
            Name =  "${var.project}-${var.environment}-bastion"

        }
        
        
    )
}
