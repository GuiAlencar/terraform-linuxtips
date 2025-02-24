variable "nome_instancia" {
  description = "Nome da instância"
  type = string
}

variable "environment" {
  description = "Ambiente da instância"
  type = string
  default = "dev"
}