module "projetoA" {
  source = "./instancias"
  nome_instancia = "projetoA"
  ami = data.aws_ami.ubuntu.id
}