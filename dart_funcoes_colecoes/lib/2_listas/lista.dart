void main() {
  // https://servicebus2.caixa.gov.br/portaldeloterias/api/lotofacil
  final listOrderInt = [
    01,
    03,
    05,
    09,
    10,
    11,
    12,
    13,
    14,
    16,
    19,
    20,
    22,
    24,
    25
  ];
  final listOrderTwoInt = [
    02,
    04,
    05,
    07,
    08,
    10,
    11,
    12,
    14,
    15,
    16,
    18,
    20,
    24,
    25
  ];
  final dezenasSorteadas = [
    03,
    02,
    22,
    21,
    04,
    19,
    06,
    23,
    08,
    25,
    20,
    12,
    15,
    07,
    01
  ];
//  dezenasSorteadas.forEach((value) {
//    int.parse(value);
//});
  var sorteados = [03, 02, 22, 21, 04, 19, 06, 23, 08, 25, 20, 12, 15, 07, 01];
  sorteados.sort();

  print("Lista Sorteada -> ${sorteados}");
  final novaLista = [];
  final novaLista2 = [];
  for (var i = 0; i < sorteados.length; i++) {
    for (var j = 0; j < listOrderTwoInt.length; j++) {
      if (sorteados[i] == listOrderTwoInt[j]) {
        novaLista.add(sorteados[i]);
      }
    }
  }
  for (var i = 0; i < sorteados.length; i++) {
    for (var j = 0; j < listOrderInt.length; j++) {
      if (sorteados[i] == listOrderInt[j]) {
        novaLista2.add(sorteados[i]);
      }
    }
  }
  print("Jogo 1 -> $novaLista2 qtd -> ${novaLista2.length}");
  print("Jogo 2 ->  $novaLista qtd -> ${novaLista.length}");
}
