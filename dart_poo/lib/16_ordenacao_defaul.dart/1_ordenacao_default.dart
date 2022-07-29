import 'package:dart_poo/16_ordenacao_defaul.dart/cliente.dart';

void main(List<String> args) {
  var c1 = Cliente(nome: 'Eder', telefone: '1234567890');
  var c2 = Cliente(nome: 'Rodrigo', telefone: '1234567890');
  var c3 = Cliente(nome: 'Luana', telefone: '1234567890');
  var c4 = Cliente(nome: 'Joao', telefone: '1234567890');

  var lista = [c1, c2, c3, c4];

  print(lista);
  lista.sort();
  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}
