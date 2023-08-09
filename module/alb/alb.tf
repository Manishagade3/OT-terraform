resource "aws_lb" "web" {
  name               = var.lb_web_name
  internal           = false
  load_balancer_type = var.lb_type
  security_groups    = [var.security_group]
  subnets            = [var.public_subnet_1, var.public_subnet_2]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_lb_target_group" "web" {
  name     = var.web_target_group_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "web" {
  load_balancer_arn = aws_lb.web.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn
  }
}

resource "aws_lb" "app" {
  name               = var.lb_app_name
  internal           = true
  load_balancer_type = var.lb_type
  security_groups    = [var.security_group]
  subnets            = [var.private_subnet_3, var.private_subnet_4]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

resource "aws_lb_target_group" "frontend" {
  name     = var.lb_target_group_frontend_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path = "/"
  }
}

resource "aws_lb_listener" "app" {
  load_balancer_arn = aws_lb.app.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend.arn
  }
}

resource "aws_lb_listener_rule" "frontend_rule" {
  listener_arn = aws_lb_listener.app.arn
  priority     = 1

  condition {
    path_pattern {
      values = ["/"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend.arn
  }
}

resource "aws_lb_target_group" "employee" {
  name     = var.lb_target_group_employee_name
  port     = 8083
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path = "/employee/search/all"
  }
}

resource "aws_lb_listener_rule" "employee_rule" {
  listener_arn = aws_lb_listener.app.arn
  priority     = 2

  condition {
    path_pattern {
      values = ["/employee*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.employee.arn
  }
}

resource "aws_lb_target_group" "attendance" {
  name     = var.lb_target_group_attendance_name
  port     = 8081
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path = "/attendance/search"
  }
}


resource "aws_lb_listener_rule" "attendance" {
  listener_arn = aws_lb_listener.app.arn
  priority     = 3

  condition {
    path_pattern {
      values = ["/attendance*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.attendance.arn
  }
}

resource "aws_lb_target_group" "salary" {
  name     = var.lb_target_group_salary_name
  port     = 8080
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path = "/salary/search/all"
  }
}


resource "aws_lb_listener_rule" "salary_rule" {
  listener_arn = aws_lb_listener.app.arn
  priority     = 4

  condition {
    path_pattern {
      values = ["/salary*"]
    }
  }

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.salary.arn
  }
}

