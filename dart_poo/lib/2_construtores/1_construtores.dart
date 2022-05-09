import 'package:dart_poo/2_construtores/pessoa.dart';

void main(List<String> args) {
  // var pessoa = Pessoa('Eder', 18, ' M');

  var pessoa = Pessoa(
    nome: 'Eder',
    idade: 18,
    sexo: ' M',
  );
  print(pessoa.nome);

  var pessoaNomeado = Pessoa.semNome(
    idade: 18,
    sexo: 'M',
  );
  print(pessoaNomeado.idade);

  var pessoaFabrica = Pessoa.fabrica('Eder');
}
