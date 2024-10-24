resource "aws_db_instance" "example-db-instance" {
  identifier = "example-db-instance"
  allocated_storage    = 20
  storage_type = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = var.database_username
  password             = var.database_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = true
  
}

