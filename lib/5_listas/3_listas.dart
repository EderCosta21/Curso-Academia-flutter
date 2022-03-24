void main() {
  final numeros = [1, 2, 3, 4, 5];

  print(numeros);

  // .add adiciona ao final da lista
  numeros.add(1);
  print(numeros);
  //
  final nomes = ['eder', 'ze', 'maria', 'joão', 'marcos'];
  print(nomes);
  //
  nomes.add('luana');
  nomes.addAll(['eder2', 'ze2', 'maria2', 'joão2', 'marcos2']);
  print(nomes);
  print(nomes[2]);
  print('adicionando jose na lista');
  nomes.insert(0, 'josé');
  print(nomes);
  print(nomes[0]);
  //
  nomes.remove('luana');
  print(nomes);
  //
  nomes.removeWhere((nome) {
    if (nome == 'ze') {
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  //
  // print(nomes[0]); <- substituir isso
  print(nomes.first);
  // print(nomes[nomes.length -1]); <- substituir isso
  print(nomes.last);

  var primeiroNome = nomes.firstWhere((nome) {
    if (nome == 'maria') {
      return true;
    } else {
      return false;
    }
  });

  print(primeiroNome);
  //
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);
//
  final stringGerados = List.generate(10, (index) => '#${index + 1}');
  print(stringGerados);
  //
  final repeticoes = List.filled(10, 'fill');
  print(repeticoes);
  //
  final numGeradosCalculo = List.generate(100, (index) => index + 1);
  var some = numGeradosCalculo.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);

  print(some);
  //
  // Spread operator (...)
  var list2 = [4, 5, 6];

  var list1 = [1, 2, 3, ...list2];
  print(list1);

  // Collection If
  var promocaoAtiva = true;

  var produtos = [
    'cerveja',
    'refrigerante',
    if (promocaoAtiva) 'suco de fruta'
  ];
  print(produtos);

  // Collection For
  var listaInts = [1, 2, 3];
  var listaString = ['#0', '#1', for (int i in listaInts) '#$i'];
  print(listaString);
}
