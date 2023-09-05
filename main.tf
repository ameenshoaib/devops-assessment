provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_db_instance" "wordpress_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "root"
  password             = "Ayishameen2028"
  parameter_group_name = "default.mysql5.7"
  vpc_security_group_ids = ["sg-010a4b8e4c08bb944"]  # Replace with your security group ID
}
