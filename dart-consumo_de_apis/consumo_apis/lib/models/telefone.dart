import 'dart:convert';

class Telefone {
  int ddd;
  int numero;
  Telefone({
    required this.ddd,
    required this.numero,
  });

  @override
  String toString() => 'Telefone => ddd: $ddd, numero: $numero';

// é um metodo que pega o objeto (Telefone) e transforma em um Map<String,dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'numero': numero,
    };
  }

// é um CONSTRUTOR ele vai pegar um MAP e transformar em um objeto telefone
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd']?.toInt() ?? 0,
      numero: map['numero']?.toInt() ?? 0,
    );
  }

// é um metodo que retorna uma string json do meu objeto Telefone
  String toJson() => json.encode(toMap());

// é um metodo que baseado em uma string json retorna um objeto Telefone
  factory Telefone.fromJson(String source) =>
      Telefone.fromMap(json.decode(source));
}
