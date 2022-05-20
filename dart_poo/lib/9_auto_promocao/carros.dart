// Isso aqui é uma classe abstrata
//pois tem métodos implementados
abstract class CarroAbstrata {
  void velocidadeMaxima() {}
}

//Isso daqui é uma interface
// pois não possui métodos implementados !!!!!!
// ignore: camel_case_types
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}
