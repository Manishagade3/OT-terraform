resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.public_subnets[0]
  availability_zone = "${var.aws_region}a"
  tags = {
    Name = "web-subnet-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.public_subnets[1]
  availability_zone = "${var.aws_region}b"
  tags = {
    Name = "web-subnet-2"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.private_subnets[0]
  availability_zone = "${var.aws_region}a"
  tags = {
    Name = "app-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.private_subnets[1]
  availability_zone = "${var.aws_region}b"
  tags = {
    Name = "app-subnet-2"
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.private_subnets[2]
  availability_zone = "${var.aws_region}a"
  tags = {
    Name = "app-subnet-3"
  }
}

resource "aws_subnet" "private_subnet_4" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.private_subnets[3]
  availability_zone = "${var.aws_region}b"
  tags = {
    Name = "app-subnet-4"
  }
}

resource "aws_subnet" "private_subnet_5" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.database_subnets[0]
  availability_zone = "${var.aws_region}a"
  tags = {
    Name = "data-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_6" {
  vpc_id           = aws_vpc.main.id
  cidr_block       = var.database_subnets[1]
  availability_zone = "${var.aws_region}b"
  tags = {
    Name = "data-subnet-2"
  }
}