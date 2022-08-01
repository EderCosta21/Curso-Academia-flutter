void main(List<String> args) {
  final nomes = ['Eder', 'Rodrigo', 'Renato', 'Sandra'];
  final pessoas = nomes.map((e) => Pessoa(e)).toList();
  // final pessoas_old = nomes.map((e) => Pessoa(e)).toList();
  // ignore: sdk_version_constructor_tearoffs
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  // final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }
}

class Pessoa {
  String nome;
  Pessoa(this.nome);

  Pessoa.nome(this.nome);
}
