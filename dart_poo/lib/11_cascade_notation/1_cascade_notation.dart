void main(List<String> args) {
  var pessoa = Pessoa()
    ..nome = 'eder'
    ..email = 'eder@gmail.com'
    ..site = 'www';

  // pessoa.nome = 'Eder';
  // pessoa.email = 'eder@gmail.com';
  // pessoa.site = 'www.google.com';

  print(pessoa);
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email, site: $site)';
}
