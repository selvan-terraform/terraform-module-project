module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.dev_vpc_cidr_block
  vpc_name       = var.dev_vpc_name

}
