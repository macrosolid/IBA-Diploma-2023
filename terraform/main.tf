resource "aws_ssm_parameter" "enviroment" {
  name  = "env"
  type  = "String"
  value = "prod"
}