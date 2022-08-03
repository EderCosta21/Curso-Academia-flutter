import 'package:consumo_apis/controller/alunos_controller.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  // AlunosController().findAll();

  print('<---------------------------------------->');
  // AlunosController().findById('2');

  // AlunosController().update();

  AlunosController().insert();

  AlunosController().findById('3');
}
