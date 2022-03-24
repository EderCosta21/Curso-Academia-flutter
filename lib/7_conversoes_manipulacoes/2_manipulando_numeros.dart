void main() {
  final idade = 30;
  print('Sua idade é $idade');
  final valor = -30;

  if (valor.isNegative) {
    print(valor);
  }
  // arredondamento
  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

// transformar string em number
  final valorString = '1';
  final valorStringErrado = 'a';
  final valorInt = int.parse(valorString);
  print(valorInt);
  final valorInt2 = int.tryParse(valorStringErrado);
  print(valorInt2);

  final precoCamiseta = 30.123412;
  print(precoCamiseta.toStringAsFixed(2));
}
