import 'package:dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_poo/7_polimorfismo/medico.dart';
import 'package:dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_poo/7_polimorfismo/residente_anestesia.dart';

void main(List<String> args) {
  //Parto!!

  var medicos = <Medico>[
    ResidenteAnestesia(),
    Obstreta(),
    Pediatra(),
  ];

  for (var medico in medicos) {
    medico.operar();
  }
}
