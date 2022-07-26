import 'package:dart_fundamentos/8_interfaces/carro.dart';

class Gol implements Carro {
  int portas = 4;
  int rodas = 4;
  String motor = '2.0';

  int velocidademaxima() {
    return 200;
  }

  @override
  void velocidadeMaxima() {
    // TODO: implement velocidadeMaxima
  }
}
