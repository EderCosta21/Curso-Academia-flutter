void main() {
  // Parametros obrigatórios por default

  print('Executando a soma de inteiros é ${somaInteiros(10, 1)}');

  // Parametros nomeados
  // Parametros nomeados são nulos por default
  // Parametros nomeados podem ser promovidos para non-null com checagem de null

  print(
      'Executando a somaDoubles de inteiros é ${somaDoubles(num1: 10.2, num2: 1.4)}');

  print(
      'Executando a somaObrigatorios de inteiros é ${somaObrigatorios(num1: 11, num2: 1.2)}');

  print(
      'Executando a somaObrigatorios2 de inteiros é ${somaObrigatorios2(num1: null, num2: 1.2)}');
  print('Executando a somaDefault de inteiros é ${somaDefault(num1: 1)}');

  // Paramentro Opcional
  // É necessário passar na ordem correta dos itens
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 2);

  // Nomeados
  parametrosNormaisComNomeados(1, nome: 'Eder', idade: 25);
  parametrosNormaisComNomeados2(1, 'Eder');
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

double somaDoubles({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}

double somaObrigatorios({required double num1, required double num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}

double somaObrigatorios2({required double? num1, required double num2}) {
  num1 ??= 0;
  return num1 + num2;
}

double somaDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

int somaIntOpcional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
