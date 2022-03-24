void main(List<String> args) {
  // operadores logicos
  // && (E)
  // || (OU)
  //  ! (NÃO)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M' && idade > 18) {
    print('true');
  } else {
    print('false');
  }

  // || uma das condições precisar ser true

  if (sexo == 'M' || idade >= 18) {
    print('true');
  } else {
    print('false');
  }
  //  ! uma das condições precisar ser true
  if (!(sexo == 'M' || idade >= 18)) {
    print('true');
  } else {
    print('false');
  }
}
