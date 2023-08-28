output "lb_target_group_frontend_arn" {
  value       = aws_lb_target_group.frontend.arn
  description = "lb_target_group_frontend_arn"
}
output "lb_target_group_salary_arn" {
  value       = aws_lb_target_group.salary.arn
  description = "nat_gateway_id"
}
output "lb_target_group_attendance_arn" {
  value       = aws_lb_target_group.attendance.arn
  description = "lb_target_group_attendance_arn"
}
output "lb_target_group_employee_arn" {
  value       = aws_lb_target_group.employee.arn
  description = "lb_target_group_employee_arn"
}
output "lb_target_group_web_arn" {
  value       = aws_lb_target_group.web.arn
  description = "lb_target_group_web_arn"
}

output "aws_lb_listener" {
  value       = aws_lb_listener.app.arn
  description = "aws_lb_listener"
}
output "lb_web" {
  value       = aws_lb.web.arn
  description = "lb_web_arn"
}
output "lb_app" {
  value       = aws_lb.app.arn
  description = "lb_app_arn"
}
output "internal_alb_dns" {
  value = aws_lb.app.dns_name
}
