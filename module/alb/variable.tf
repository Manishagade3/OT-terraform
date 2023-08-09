variable "web_target_group_name" {
  type = string 
  default = "web-tg"
}
variable "lb_web_name" {
  type = string 
  default = "web-alb"
}
 variable "lb_type" {
    type = string
    default = "application"
 }
 variable "security_group" {}
 variable "public_subnet_1" {}
 variable "public_subnet_2" {}
 variable "vpc_id" {}
 variable "aws_lb_web_arn" {
    type = string 
    default = "aws_lb.web.arn"
 }

 variable "lb_app_name" {
    default = "app-alb"   
 }

 variable "private_subnet_3" {}
 variable "private_subnet_4" {}

 variable "lb_target_group_frontend_name" {
    default =  "frontend-tg" 
 }
 
 variable "lb_listener_app_arn" {
    default = "aws_lb_listener.app.arn"
 }
 variable "lb_target_group_employee_name" {
    default = "employee-tg"
 }

 variable "lb_target_group_attendance_name" {
    default = "attendance-tg"
 }
 
 variable "lb_target_group_salary_name"{
    default = "salary-tg"
 }
