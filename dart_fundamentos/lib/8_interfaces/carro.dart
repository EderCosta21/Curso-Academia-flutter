abstract class Carro2 {
// isso é uma classe abstrata
// classe abstrata tem métodos implementados
  void velocidadeMaxima() {}
}

//interface
abstract class Carro {
  // classe abstrata não tem métodos implementados

  int portas;
  int rodas;
  String motor;
  Carro({
    required this.portas,
    required this.rodas,
    required this.motor,
  });
  void velocidadeMaxima();
}
