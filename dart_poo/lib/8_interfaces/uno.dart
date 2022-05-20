import 'package:dart_poo/8_interfaces/carros.dart';

class Uno implements Carro {
  @override
  String motor = '1.0';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 160;
  }
}
