
resource "aws_vpc" "DevOps-vpc1" {
  #resource arguments
  cidr_block           = var.nv_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.nv_vpc1
  }
}
resource "aws_internet_gateway" "DevOps-vpc1_igw" {
  vpc_id = aws_vpc.DevOps-vpc1.id
  tags = {
    Name = "${var.nv_vpc1}-IGW"
  }
}

resource "aws_vpc" "DevOps-vpc2" {
  #resource arguments
  cidr_block           = var.nv_vpc2_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.nv_vpc2


  }
}
resource "aws_internet_gateway" "DevOps-vpc2_igw" {
  vpc_id = aws_vpc.DevOps-vpc2.id
  tags = {
    Name = "${var.nv_vpc2}-IGW"
  }
}


#which is not created by the terraform mannual created one is data source
#data "aws_vpc" "Shell-scripting"{
#    "vpc_id" = "vpc-048f5af5d2626aaa3"
#}

#Creating Vpc in ohio location



resource "aws_vpc" "ohio_DevOps-vpc1" {
  #resource arguments
  provider             = aws.ohio
  cidr_block           = var.ohio_vpc1_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.ohio_vpc1


  }

}
resource "aws_internet_gateway" "ohio_DevOps-vpc1_igw" {
  provider = aws.ohio
  vpc_id   = aws_vpc.ohio_DevOps-vpc1.id
  tags = {
    Name = "${var.ohio_vpc1}-IGW"
  }
}

resource "aws_vpc" "ohio_DevOps-vpc2" {
  #resource arguments
  provider             = aws.ohio
  cidr_block           = var.ohio_vpc2_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.ohio_vpc2


  }

}
resource "aws_internet_gateway" "ohio_DevOps-vpc2_igw" {
  provider = aws.ohio
  vpc_id   = aws_vpc.ohio_DevOps-vpc2.id
  tags = {
    Name = "${var.ohio_vpc2}-IGW"
  }
}
