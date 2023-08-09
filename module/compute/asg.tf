resource "aws_autoscaling_group" "web" {
  name_prefix          = "web-asg"
  launch_template {
    id = aws_launch_template.web.id
  }
    
  min_size             = var.web_asg_size_min
  max_size             = var.web_asg_size_max
  desired_capacity     = var.web_asg_size_desired
  vpc_zone_identifier  = [var.private_subnet_1, var.private_subnet_2]

  target_group_arns    = [var.lb_target_group_web_arn]

  tag {
    key                 = "Name"
    value               = "web"
    propagate_at_launch = true
  }

  tag {
    key                 = "Terraform"
    value               = "true"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "frontend" {
  name_prefix          = "frontend-asg"
  vpc_zone_identifier  = [var.private_subnet_3, var.private_subnet_4]

  launch_template {
    id = aws_launch_template.frontend.id
  }
  target_group_arns    = [var.lb_target_group_frontend_arn]

  min_size         = var.frontend_asg_size_min
  max_size         = var.frontend_asg_size_max
  desired_capacity = var.frontend_asg_size_desired

  tag {
    key                 = "Name"
    value               = "frontend"
    propagate_at_launch = true
  }

  tag {
    key                 = "Terraform"
    value               = "true"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "employee" {
  name_prefix          = "employee-asg"
  vpc_zone_identifier  = [var.private_subnet_3, var.private_subnet_4]
  launch_template {
    id = aws_launch_template.employee.id
  }
  target_group_arns    = [var.lb_target_group_employee_arn]

  min_size         = var.employee_asg_size_min
  max_size         = var.employee_asg_size_max
  desired_capacity = var.employee_asg_size_desired

  tag {
    key                 = "Name"
    value               = "employee"
    propagate_at_launch = true
  }

  tag {
    key                 = "Terraform"
    value               = "true"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "attendance" {
  name_prefix          = "attendance-asg"
  vpc_zone_identifier  = [var.private_subnet_3, var.private_subnet_4]
  launch_template {
    id = aws_launch_template.attendance.id
  }
  target_group_arns    = [var.lb_target_group_attendance_arn]

  min_size         = var.attendance_asg_size_min
  max_size         = var.attendance_asg_size_max
  desired_capacity = var.attendance_asg_size_desired

  tag {
    key                 = "Name"
    value               = "attendance"
    propagate_at_launch = true
  }

  tag {
    key                 = "Terraform"
    value               = "true"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "salary" {
  name_prefix          = "salary-asg"
  vpc_zone_identifier  = [var.private_subnet_3, var.private_subnet_4]
  launch_template {
    id = aws_launch_template.salary.id
  }
  target_group_arns    = [var.lb_target_group_salary_arn]

  min_size         = var.salary_asg_size_min
  max_size         = var.salary_asg_size_max
  desired_capacity = var.salary_asg_size_desired

  tag {
    key                 = "Name"
    value               = "salary"
    propagate_at_launch = true
  }

  tag {
    key                 = "Terraform"
    value               = "true"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
