import 'package:dart_poo/5_heranca_covariant/fruta.dart';

import 'mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}
