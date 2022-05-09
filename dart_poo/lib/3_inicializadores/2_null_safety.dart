import 'package:dart_poo/3_inicializadores/cliente.dart';

void main(List<String> args) {
  var cliente = Cliente(nome: 'Eder');

  cliente.nome = 'Eder';
  print(cliente.nome);
}
