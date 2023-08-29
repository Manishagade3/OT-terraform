resource "aws_iam_role" "ec2_role" {
  name = var.role_name
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "my-ec2-instance-profile"
  role = aws_iam_role.ec2_role.name
}

resource "aws_iam_policy_attachment" "ec2_role_attachment" {
  name       = "ec2-role-policy-attachment"
  roles      = [aws_iam_role.ec2_role.name]
  policy_arn = var.policy_arn
}
