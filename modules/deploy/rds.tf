resource "aws_db_subnet_group" "db_subnets" {
  name       = "main-db-subnet-group"
  subnet_ids = [var.private_subnet_id_1, var.private_subnet_id_2]
}

resource "aws_db_instance" "postgres" {
  allocated_storage   = 20
  engine              = "postgres"
  engine_version      = "15.4"
  instance_class      = "db.t3.micro"
  db_name             = "myappdb"
  username            = "dbadmin"
  password            = "your-secure-password" # Best practice: use variables!
  skip_final_snapshot = true

  db_subnet_group_name   = aws_db_subnet_group.db_subnets.name
  vpc_security_group_ids = [var.db_sg_id]

  tags = { Name = "Main-Postgres-DB" }
}
