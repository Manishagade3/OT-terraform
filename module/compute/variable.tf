variable "environment" {
  default     = "dev"
}

variable "web_instance_type" {}
variable "bastion_instance_type" {}
variable "app_instance_type" {}
variable "frontend_instance_type" {}
variable "employee_instance_type" {}
variable "attendance_instance_type" {}
variable "salary_instance_type" {}
variable "bation_ami" {}
 variable "frontend_ami" {}
variable "attendance_ami" {}
 variable "employee_ami" {}
variable "salary_ami" {}
 variable "mysql_ami" {}
 variable "web_ami" {}
 variable "public_subnet_1" {}
 variable "private_subnet_1" {}
 variable "private_subnet_2" {}
  variable "private_subnet_3" {}
   variable "private_subnet_4" {}
   variable "security_group" {}
   variable "lb_target_group_salary_arn" {}
   variable "lb_target_group_web_arn" {}
   variable "lb_target_group_frontend_arn" {}
   variable "lb_target_group_employee_arn" {}
   variable "lb_target_group_attendance_arn" {}

  variable "web_asg_size_min" {
  }   
  variable "web_asg_size_max" {
  }
  variable "web_asg_size_desired" {
  }
  variable "employee_asg_size_min" {
  }   
  variable "employee_asg_size_max" {
  }
  variable "employee_asg_size_desired" {
  
  }
   variable "attendance_asg_size_min" {
  }   
  variable "attendance_asg_size_max" {
  }
  variable "attendance_asg_size_desired" {
  }
   variable "salary_asg_size_min" {
  }   
  variable "salary_asg_size_max" {
  }
  variable "salary_asg_size_desired" {
   
  }
   variable "frontend_asg_size_min" {
  }   
  variable "frontend_asg_size_max" {
  }
  variable "frontend_asg_size_desired" {
  }
 