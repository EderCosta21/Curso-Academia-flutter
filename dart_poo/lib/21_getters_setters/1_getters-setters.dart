// ignore_for_file: file_names

void main(List<String> args) {
  var pessoa = Pessoa();

  pessoa._name = 'eder';
  // pessoa.setNome('nome');
}

class Pessoa {
  String? _name;

  String? get nome => _name;

  set nome(String? nome) => _name = nome;

  // String? getNome() => _name;
  // void setNome(String? nome) => _name = nome;
}
