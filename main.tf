resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
    {name = "prod.rds.master_username", value = "expense", type = "string"}
  ]
}

## Ideally we don't keep passwords in GIT REPOS, those will be created manually. secrete management of creating secrets is most of the time manual.