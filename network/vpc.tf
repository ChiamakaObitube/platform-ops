module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                  = "platform-${terraform.workspace}"
  cidr                  = var.cidr

  azs                   = data.aws_availability_zones.available
  private_subnets       = var.private_subnets
  public_subnets        = var.public_subnets
  enable_nat_gateway    = true
  enable_vpn_gateway    = true
  enable_dhcp_options   = true
  tags                  = local.tags
}