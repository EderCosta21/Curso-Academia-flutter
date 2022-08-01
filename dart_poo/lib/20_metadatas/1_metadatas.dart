import 'dart:mirrors';

import 'package:dart_poo/20_metadatas/pessoa.dart';
import 'package:dart_poo/20_metadatas/todo.dart';

void main(List<String> args) {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instance = annotation.reflectee;

    if (instance is Fazer) {
      print('o que : ${instance.oque}');
      print('quem : ${instance.quem}');
    }
  });
  print(classMirror);
}
