module "roboshop" {
  source = "../tterraform-aws-vpc"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # the above line from 3 to 6 are mandatory to pass here

  # public subnet
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet
  private_subnets_cidr = var.private_subnets_cidr

}