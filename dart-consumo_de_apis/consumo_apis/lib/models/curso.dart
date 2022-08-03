import 'dart:convert';

class Cursos {
  int id;
  String nome;
  bool isAluno;
  Cursos({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }

  factory Cursos.fromMap(Map<String, dynamic> map) {
    return Cursos(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      isAluno: map['isAluno'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cursos.fromJson(String source) => Cursos.fromMap(json.decode(source));

  @override
  String toString() => 'Cursos => id: $id, nome: $nome, isAluno: $isAluno';
}
