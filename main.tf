resource "random_string" "random" {
  length = 16
  special = true
  override_special = "!#$%&*()-_=+[]{}<>:?" 
}

resource "aws_ssm_parameter" "name" {
  name = "dm-hw14-postgresql"
  type = "SecureString"
  value = random_string.random.result
}

resource "aws_db_instance" "education" {
  identifier             = aws_ssm_parameter.name.name
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "14.1"
  username               = "edu"
  password               = aws_ssm_parameter.name.value
  publicly_accessible    = true
  skip_final_snapshot    = true
  tags = {
    Name = aws_ssm_parameter.name.name
    IBA_Lesson = "Lesson 14"
  }
}

output "aws_instance_password" {  # Show ID of created EC2 instance
  value = aws_ssm_parameter.name.value
}