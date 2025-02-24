variable "nome_instancia" {
  description = "Nome da instância"
  type = string
}

variable "environment" {
  description = "Ambiente da instância"
  type = string
  default = "dev"
}

variable "ami" {
  type = string
  description = "AMI da instancia"
}