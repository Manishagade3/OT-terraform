terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.8.0"
    }
  }
}
module "network" {
  source           = "../../../module/network"
  aws_region       = "us-east-1"
  aws_profile      = "manish"
  environment      = "dev"
  vpc_cidr         = var.vpc_cidr
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets
  ports            = var.ports


}

module "alb" {
  source           = "../../../module/alb"
  security_group   = module.network.security_group
  private_subnet_4 = module.network.private_subnet_4
  private_subnet_3 = module.network.private_subnet_3
  public_subnet_1  = module.network.public_subnet_1
  public_subnet_2  = module.network.public_subnet_2
  vpc_id           = module.network.vpc_id


}

module "compute" {
  source = "../../../module/compute"

  environment                    = "dev"
  web_instance_type              = "t2.micro"
  app_instance_type              = "t2.micro"
  lb_target_group_attendance_arn = module.alb.lb_target_group_attendance_arn
  lb_target_group_employee_arn   = module.alb.lb_target_group_employee_arn
  lb_target_group_frontend_arn   = module.alb.lb_target_group_frontend_arn
  lb_target_group_web_arn        = module.alb.lb_target_group_web_arn
  lb_target_group_salary_arn     = module.alb.lb_target_group_salary_arn
  security_group                 = module.network.security_group
  private_subnet_4               = module.network.private_subnet_4
  private_subnet_3               = module.network.private_subnet_3
  private_subnet_2               = module.network.private_subnet_2
  private_subnet_1               = module.network.private_subnet_1
  public_subnet_1                = module.network.public_subnet_1
  frontend_ami                   = var.frontend_ami
  employee_ami                   = var.employee_ami
  salary_ami                     = var.salary_ami
  attendance_ami                 = var.attendance_ami
  mysql_ami                      = var.mysql_ami
  web_ami                        = var.web_ami
  bation_ami                     = var.bation_ami
  frontend_instance_type         = var.frontend_instance_type
  employee_instance_type         = var.employee_instance_type
  salary_instance_type           = var.salary_instance_type
  attendance_instance_type       = var.attendance_instance_type
  bastion_instance_type          = var.bastion_instance_type
  web_asg_size_min               = var.web_asg_size_min
  web_asg_size_max               = var.web_asg_size_max
  web_asg_size_desired           = var.web_asg_size_desired
  employee_asg_size_min          = var.employee_asg_size_min
  employee_asg_size_max          = var.attendance_asg_size_max
  employee_asg_size_desired      = var.attendance_asg_size_desired
  attendance_asg_size_min        = var.attendance_asg_size_min
  attendance_asg_size_max        = var.attendance_asg_size_max
  attendance_asg_size_desired    = var.attendance_asg_size_desired
  salary_asg_size_min            = var.salary_asg_size_min
  salary_asg_size_max            = var.attendance_asg_size_max
  salary_asg_size_desired        = var.attendance_asg_size_desired
  frontend_asg_size_min          = var.frontend_asg_size_min
  frontend_asg_size_max          = var.frontend_asg_size_max
  frontend_asg_size_desired      = var.frontend_asg_size_desired
}




















