variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile to use for authentication"
  default     = "default"
}

variable "environment" {
  description = "Environment for the infrastructure (e.g., dev, staging, prod)"
  default     = "dev"
}

variable "lb_type" {
  type    = string
  default = "application"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "database_subnets" {
  description = "CIDR blocks for database subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
variable "ports" {
  type    = list(number)
  default = [80, 22, 8080, 8081, 8083, 3000, 3306, 9200, 443]
}

variable "web_instance_type" {
  description = "EC2 instance type for the web tier"
  default     = "t2.micro"
}
variable "bastion_instance_type" {
  default = "t2.micro"
}

variable "app_instance_type" {
  default = "t2.micro"
}
variable "frontend_instance_type" {
  default = "t2.micro"
}
variable "employee_instance_type" {
  default = "t2.micro"
}
variable "attendance_instance_type" {
  default = "t2.micro"
}
variable "salary_instance_type" {
  default = "t2.micro"
}
variable "db_instance_class" {
  description = "RDS instance class for the database tier"
  default     = "db.t2.micro"
}

#variable "db_username" {
#  description = "Username for the RDS instance"
#  default     = "admin"
#}

#variable "db_password" {
#  description = "Password for the RDS instance"
#  sensitive   = true
#}

#variable "multi_az" {
#  description = "Multi-az deployment for RDS"
#  default     = false
#}

#for eks cluster
variable "subnet_id_1" {
  type    = string
  default = "subnet-your_first_subnet_id"
}

variable "subnet_id_2" {
  type    = string
  default = "subnet-your_second_subnet_id"
}

variable "web_ami" {
  default = "ami-053b0d53c279acc90"
}
variable "bation_ami" {
  default = "ami-053b0d53c279acc90"
}


variable "frontend_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "attendance_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "employee_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "salary_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "mysql_ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "bucket_name" {
  default = "ot-manish1-tfstate335432"
}
variable "dynamodb_table_name" {
  default = "terraform-up-and-running-locks"
}

variable "web_asg_size_min" {
  type    = number
  default = 1
}
variable "web_asg_size_max" {
  type    = number
  default = 3
}
variable "web_asg_size_desired" {
  type    = number
  default = 2
}
variable "employee_asg_size_min" {
  type    = number
  default = 1
}
variable "employee_asg_size_max" {
  type    = number
  default = 3
}
variable "employee_asg_size_desired" {
  type    = number
  default = 2
}
variable "attendance_asg_size_min" {
  type    = number
  default = 1
}
variable "attendance_asg_size_max" {
  type    = number
  default = 3
}
variable "attendance_asg_size_desired" {
  type    = number
  default = 2
}
variable "salary_asg_size_min" {
  type    = number
  default = 1
}
variable "salary_asg_size_max" {
  type    = number
  default = 3
}
variable "salary_asg_size_desired" {
  type    = number
  default = 2
}
variable "frontend_asg_size_min" {
  type    = number
  default = 1
}
variable "frontend_asg_size_max" {
  type    = number
  default = 3
}
variable "frontend_asg_size_desired" {
  type    = number
  default = 2
}
 
