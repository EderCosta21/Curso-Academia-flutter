void main() {
  // condição ? faça algo : outra coisa
  final idade = 18;

  if (idade == 18) {
    print('sim');
  } else {
    print('não');
  }

  final eMaiorDeIdade = idade > 18 ? true : false;

  print('é maior de idade' + eMaiorDeIdade.toString());
}
