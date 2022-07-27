String? nome;
void main(List<String> args) {
  // = -= /= %= >>= ^=
  // += *= ~/=  &= !=
  var numero = 1;
  print(numero);
  numero += 1;
  print(numero);

  var num2 = 2.0;

  num2 /= 1.0;

  print(num2);
  // atribuir um valor caso sejá nulo
  nome ??= 'eder';

  var a;
  // atribuicao ternaria
  a ? '' : '';
  print(nome);
}
