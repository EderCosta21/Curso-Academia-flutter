void main() {
  var numeros = List.generate(10, (index) => index + 1);

  numeros.where((numero) => numero != 5).forEach((numero) {
    print(numero);
  });
//
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((element) => element != 5)
      .toList();
  print(numerosAte6);
//
  final numerosAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosAte5);
//
  var nomes = ['eder', 'ze', 'maria', 'joao', 'marcos'];
  var nomesSkips = nomes.skipWhile((nome) {
    if (nome != 'joao') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkips);

//
  var numerosStrList = numeros.map((e) {
    return e + 10;
  }).toList();

  print(numerosStrList);

  final numRevert = nomes.reversed.toList();
  print(numRevert);
}
