 resource "aws_instance" "ec2-instance1" {
   ami = "ami-0fff1b9a61dec8a5f"  # AMI for us-east-1 Amazon Linux 2023 AMI
   instance_type = "t2.micro"

   tags = {                                
     Name = "lb-terraform-demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-0c5ebd68eb61ff68d "  # AMI for us-west-1 Red Hat Enterprise Linux 9 (HVM), SSD Volume
  instance_type = "t2.micro"

  tags = {                                
    Name = "lb-terraform-demo-server2"
}
}