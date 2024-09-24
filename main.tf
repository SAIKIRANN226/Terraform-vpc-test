module "roboshop" {
  #source = "git"::https://github.com/daws-76s/terraform-aws-vpc.git?ref=main"  This means referring from the open source which is is internet
  source = "../tterraform-aws-vpc"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # the above line from 3 to 6 are mandatory to pass to module code and it will work in "terraform-aws-vpc"

  # public subnet passing here is mandatory
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet passing here is mandatory
  private_subnets_cidr = var.private_subnets_cidr

}