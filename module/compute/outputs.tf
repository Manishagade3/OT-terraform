output "launch_template_attendance" {
  value       = aws_launch_template.attendance.id
  description = "launch_template_attendance_id"
}

output "launch_template_salary" {
  value       = aws_launch_template.salary.id
  description = "launch_template_salary_id"
}
output "launch_template_employee" {
  value       = aws_launch_template.employee.id
  description = "launch_template_employee_id"
}

output "launch_template_web" {
  value       = aws_launch_template.web.id
  description = "launch_template_web_id"
}
output "OT_key_name" {
  value       = aws_key_pair.OT-key.key_name
  description = "OT_key_name"
}

