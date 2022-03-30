import 'package:dart_poo/1_classes/camisetas.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print(''' 
  Camiseta:
    Tamanho ${camisetaNike.marca}
    Cor : ${camisetaNike.cor}
    Marca: ${camisetaNike.marca}
    Tipo de lavagem: ${camisetaNike.tipoDeLavagem()}

  ''');

  var camisetaAdidas = new Camiseta();

  camisetaAdidas.tamanho = 'M';
  camisetaAdidas.cor = 'verde';
  camisetaAdidas.marca = 'Adidas';

  print(''' 
  Camiseta:
    Tamanho ${camisetaAdidas.marca}
    Cor : ${camisetaAdidas.cor}
    Marca: ${camisetaAdidas.marca}
    Tipo de lavagem: ${camisetaAdidas.tipoDeLavagem()}

  ''');
}

class _Camiseta2 {
  void recuperarCor() {
    var camisa = Camiseta();
    camisa.cor = 'Verde';
  }
}
