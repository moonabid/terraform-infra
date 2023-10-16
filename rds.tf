resource "aws_db_instance" "mfh_rds" {
  #   allocated_storage    = 20
  #   storage_type         = "gp2"
  #   engine               = "mysql"
  #   engine_version       = "5.7"
  #   instance_class       = "db.t2.micro"
  #   name                 = "exampledb"
  #   username             = "admin"
  #   password             = var.db_password
  #   parameter_group_name = "default.mysql5.7"
  #   skip_final_snapshot  = true

  engine               = var.engine
  identifier           = "myrdsinstance"
  allocated_storage    = 20
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "myrdsuser"
  password             = random_password.db_password.result
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  publicly_accessible  = true
}
