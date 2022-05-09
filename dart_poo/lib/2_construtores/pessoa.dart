class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

// construtor default todas as classes tem  automaticamente
  /*Pessoa(String nomeC, int idadeC, String sexoC) {
    nome = nomeC;
    idade = idadeC;
    sexo = sexoC;
  }
  */
  //construtor default
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });
  // construtor nomeado
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

// construtor do tipo factory
// utilizado quando precisa fazer uma regra antes de usar
  factory Pessoa.fabrica(String nomeC) {
    var nome = nomeC + '_Fabrica';
    var pessoa = Pessoa.vazia();

    pessoa.nome = nome;
    return pessoa;
  }
}
