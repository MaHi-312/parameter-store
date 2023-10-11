resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  type = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    {name = "prod.rds.master_password", value = "expenseprod1234", type = "SecureString"},
    {name = "prod.rds.master_username", value = "mysqlrdsadmin", type = "String"},
    {name = "prod.expense.frontend.backend_url", value = "http://backend-prod.malleswaridevops.online/", type = "String"},
    {name = "prod.rds.endpoint", value = "prod-mysql.cluster-cxsopddea5ko.us-east-1.rds.amazonaws.com", type = "String"},

    ## dev env
    {name = "dev.expense.frontend.backend_url", value = "http://backend-dev.malleswaridevops.online/", type = "String"},

    ## common env
    {name = "jenkins_password", value = "admin123", type = "String"}
  ]
}

## NOTE: Ideally we don't keep passwords in GIT REPOS, those will be created manually. secrete management of creating secrets is most of the time manual.