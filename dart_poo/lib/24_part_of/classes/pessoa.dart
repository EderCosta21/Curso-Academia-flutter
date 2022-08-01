import 'package:dart_poo/24_part_of/classes/cpf.dart';
import 'package:dart_poo/24_part_of/classes/telefone.dart';

part './endereco.dart';

class Pessoa {
  // Composição
  // quando um atributo de associação é obrigatorio
  // Nós estamos falando de composição !!!
  _Endereco endereco = _Endereco();
  Cpf cpf = Cpf();

  // Agregação
  // quando um atributo de associação não é obrigatorio
  // Nós estamos falando de Agregação !!!
  Telefone? telefone;
}
