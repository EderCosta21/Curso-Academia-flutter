import 'package:consumo_apis/models/cidade.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
  });
}
