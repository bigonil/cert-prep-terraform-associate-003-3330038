
data "aws_vpc" "lb-tf-default-vpc" {
  default = false
  tags = {
    Name = "lb-tf-main" # Replace this with the actual tag value that uniquely identifies your VPC
  }
}

resource "aws_security_group" "Project-sg" {
  name        = "server#01-sg"
  description = "ID#01 Security Group"
  vpc_id      = data.aws_vpc.lb-tf-default-vpc.id # Using the VPC ID from the data source

  # Add rules and other security group configurations
}
resource "aws_vpc" "lb-tf-default-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lb-tf-main"
  }
}

resource "aws_subnet" "custom_subnet" {
  vpc_id                  = aws_vpc.lb-tf-default-vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a" # Update with the desired availability zone
  map_public_ip_on_launch = true
}

resource "aws_instance" "demo_instance" {
  ami           = "ami-0a3c3a20c09d6f377" # Update with a valid AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.custom_subnet.id


  tags = {
    Name = "tf-cert-example-instance"
  }
}