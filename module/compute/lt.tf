resource "aws_launch_template" "web" {
  name_prefix   = "web-lt-"
  image_id      = var.web_ami
  instance_type = var.web_instance_type   
  key_name      = aws_key_pair.OT-key.key_name
  vpc_security_group_ids = [var.security_group]

  user_data = base64encode(templatefile("${path.module}/userdata_web.tpl", {}))

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_template" "frontend" {
  name_prefix   = "frontend-lt"
  image_id      = var.frontend_ami
  instance_type = var.frontend_instance_type 
  key_name      = aws_key_pair.OT-key.key_name
  vpc_security_group_ids = [var.security_group]

  user_data = base64encode(templatefile("${path.module}/userdata_frontend.tpl", {}))

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_template" "employee" {
  name_prefix   = "employee-lt"
  image_id      = var.employee_ami 
  instance_type = var.employee_instance_type  
  key_name      = aws_key_pair.OT-key.key_name

  vpc_security_group_ids = [var.security_group]

  user_data = base64encode(templatefile("${path.module}/userdata_employee.tpl", {}))

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_template" "attendance" {
  name_prefix   = "attendance-lt"
  image_id      = var.attendance_ami 
  instance_type = var.attendance_instance_type  
  key_name      = aws_key_pair.OT-key.key_name 
  vpc_security_group_ids = [var.security_group]

  user_data = base64encode(templatefile("${path.module}/userdata_attendance.tpl", {}))

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_template" "salary" {
  name_prefix   = "salary-lt"
  image_id      = var.salary_ami 
  instance_type = var.salary_instance_type
  key_name      = aws_key_pair.OT-key.key_name

  vpc_security_group_ids = [var.security_group]

  user_data = base64encode(templatefile("${path.module}/userdata_salary.tpl", {}))

  lifecycle {
    create_before_destroy = true
  }
}



