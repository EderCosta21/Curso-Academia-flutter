// ignore_for_file: avoid_print

import 'package:consumo_apis/models/aluno.dart';
import 'package:consumo_apis/models/cidade.dart';
import 'package:consumo_apis/models/curso.dart';
import 'package:consumo_apis/models/endereco.dart';
import 'package:consumo_apis/models/telefone.dart';
import 'package:consumo_apis/repositories/alunos_repositories.dart';
import 'package:flutter/material.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();
  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();

    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);

    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');

    aluno.nomeCursos.add('Imersão Shelf');

    await _alunosRepository.update(aluno);

    final alunoAlt = await _alunosRepository.findById('1');

    print('Aluno alterado --> ${alunoAlt.nomeCursos}');
  }

  Future<void> insert() async {
    final aluno = Aluno(
      id: '3',
      nome: 'Fernanda Vieira',
      idade: 22,
      nomeCursos: ['Academia do flutter'],
      cursos: [
        Cursos(id: 1, nome: 'Academia do flutter', isAluno: true),
        Cursos(id: 2, nome: 'Imersão GetX', isAluno: false),
      ],
      endereco: Endereco(
        rua: 'x',
        numero: 12,
        cep: 37000,
        cidade: Cidade(id: 1, nome: 'itajuba'),
        telefone: Telefone(ddd: 12, numero: 12345678),
      ),
    );

    _alunosRepository.insert(aluno);
  }
}
