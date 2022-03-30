void main() {
  var cor = Cores.vermelho;
  if (cor == Cores.vermelho) {
    print('cor é vermelha $Cores.vermelho');
  } else {
    print('cor não é vermelha $Cores.vermelho');
  }

// Transformando a string azul em um enum Cores.azul
// Antes  da versão 2.15
  var azul = 'azul';
  var corAzul =
      Cores.values.where((element) => element.toString() == 'Cores.azul');
  print(corAzul);

// versão 2.15
  print(Cores.azul.name);
  var corAzul125 = Cores.values.byName(azul);
  print(corAzul125);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresMapName = Cores.values.asNameMap();
  print(coresMapName);

  var corAzulPeloMap = coresMapName[azul];
  print(corAzulPeloMap);

  //Cores.values.byName('branco');
  var corBranco = coresMapName['branco'];
  print(corBranco);
}

//enum
enum Cores { azul, vermelho, laranja, verde, preto }
