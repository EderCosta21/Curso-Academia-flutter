// ignore_for_file: unused_local_variable

import 'package:dart_poo/25_conversoes/aluno.dart';
import 'package:dart_poo/25_conversoes/curso.dart';

void main(List<String> args) {
  var frutas = [
    Fruta('banana'),
    Fruta('maça'),
    Fruta('melancia'),
    Fruta('uva'),
  ];

  var frutasMap = [
    {'nome': 'banana'},
    {'nome': 'maça'},
    {'nome': 'melancia'},
    {'nome': 'uva'},
  ];

  var suco = frutas.map((fruta) {
    return Suco(sabor: fruta.name);
  }).toList();

  print(suco);
  var sucos2 = frutasMap.map((fruta) {
    return Suco(sabor: fruta['nome'] ?? 'sem sabor');
  });
  print(sucos2);

  var alunoAdf = <String, Object>{
    'nome': 'Eder',
    'cursos': [
      {'nome': 'Academia do flutter', 'descricao': 'Melhor curso'},
      {'nome': 'Imersão GetX', 'descricao': 'Imersão do GetX'},
      {'nome': 'Imersão codigo limpo', 'descricao': 'Melhor curso'},
    ]
  };
  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);

  print(aluno);
}

class Suco {
  String sabor;
  Suco({required this.sabor});

  @override
  String toString() => 'Suco => sabor: $sabor';
}

class Fruta {
  String name;
  Fruta(
    this.name,
  );
}
