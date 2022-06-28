module "us" {
    source = "./modules/vpc_module"
    providers = {
      aws = aws.us
     }
     vpc_cidr = "10.1.0.0/16"
}

module "europe" {
    source = "./modules/vpc_module"
    providers = {
      aws = aws.europe
     }
     vpc_cidr = "10.1.0.0/16"
}
