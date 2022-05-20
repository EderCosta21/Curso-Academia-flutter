class Pessoa {
  String? nome;
  // Conposição
  // Quando um atributo de associação é obrigatorio
  // Nós estamos falando de composição
  Endereco endereco = Endereco();

  // Agregação
  // Quando um atributo de associação não é obrigatório
  // Nós estamos falando de agregação
  Telefone? telefone;
}

class Telefone {}

class Endereco {}
