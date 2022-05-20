import 'carros.dart';

class Gol implements Carro {
  @override
  int portas = 4;
  @override
  int rodas = 4;
  @override
  String motor = '2.0';

  @override
  int velocidadeMaxima() {
    return 200;
  }
}
