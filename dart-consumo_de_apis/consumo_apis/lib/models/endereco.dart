import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero']?.toInt() ?? 0,
      cep: map['CEP'] ?? '',
      cidade: Cidade.fromMap(map['cidade']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Endereco.fromJson(String source) =>
      Endereco.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Endereco => rua: $rua, numero: $numero, CEP: $cep, cidade: $cidade';
  }
}
