import 'package:dart_poo/18_modificadores/pessoa.dart';

void main(List<String> args) {
  var p1 = const Pessoa(nome: 'Eder', idade: 18);
  var p2 = const Pessoa(nome: 'Eder', idade: 18);
  print(p1 == p2);
}
