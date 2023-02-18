resource "aws_db_instance" "db" {
  identifier             = "db"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "14.2"
  username               = "dbuser"
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.db.name
  vpc_security_group_ids = [aws_security_group.database.id]
  publicly_accessible    = true
  skip_final_snapshot    = true
  backup_retention_period = "1"
  multi_az               = true

}