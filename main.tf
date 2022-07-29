resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = "true"
    enable_dns_support = "true"
    tags = {
    Name = "myvpc"
  }
}

resource "aws_internet_gateway" "myigw" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
    Name = "myigw"
  }
}

resource "aws_subnet" "public" {
    cidr_block = cidrsubnet ("${var.vpc_cidr}", 8, 1)
    vpc_id = aws_vpc.myvpc.id
    tags = {
    Name = "public"
  }
}


resource "aws_subnet" "private" {
    cidr_block = cidrsubnet ("${var.vpc_cidr}", 8, 2)
    vpc_id = aws_vpc.myvpc.id
    tags = {
    Name = "private"
  }
}
