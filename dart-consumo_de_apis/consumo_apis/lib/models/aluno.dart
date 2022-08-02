import 'package:consumo_apis/models/endereco.dart';

import 'curso.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCursos;
  Endereco endereco;
  List<Cursos> cursos;
  Aluno({
    required this.id,
    required this.nome,
    required this.idade,
    required this.nomeCursos,
    required this.endereco,
    required this.cursos,
  });
}
