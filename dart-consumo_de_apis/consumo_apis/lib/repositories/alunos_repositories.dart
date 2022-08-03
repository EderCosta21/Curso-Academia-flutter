import 'dart:convert';

import 'package:consumo_apis/models/aluno.dart';

import 'package:http/http.dart' as http;

class AlunosRepository {
  Future<List<Aluno>> findAll() async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:3031/alunos'));
    // quando é uma lista de objeto
    final alunosList = await json.decode(alunosResponse.body);
    return alunosList.map<Aluno>((res) {
      return Aluno.fromMap(res);
    }).toList();
  }

  Future<Aluno> findById(String id) async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:3031/alunos/$id'));

    // final alunosMap = await json.decode(alunosResponse.body);
    // return Aluno.fromMap(alunosMap);
    //Somente se for um Objeto

    return Aluno.fromJson(alunosResponse.body);
  }

  Future<void> update(Aluno aluno) async {
    await http.put(
      Uri.parse('http://localhost:3031/alunos/${aluno.id}'),
      body: aluno.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
  }

  Future<void> insert(Aluno aluno) async {
    await http.post(
      Uri.parse('http://localhost:3031/alunos/'),
      body: aluno.toJson(),
      headers: {
        'content-type': 'application/json',
      },
    );
    // quando é uma lista de objeto
  }
}
