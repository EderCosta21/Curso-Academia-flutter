void main() {
  // Funcoes Arrow
  print(somaInteiros(10, 10));

  // Funcoes Anonimas

  var nome = '';
  var idade = 21;
  var funcaoAy = () {
    print('chamou a função anonima');
  };
  print(funcaoAy());
  // () {
  //   print('Função anonima');
  //  }();

// funcao dentro da funcao
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('nome vazio');
    } else {
      print(nome);
    }
  });

  // Typedef
}

// 3 partes
// 1 tipo de retorno
// 2 Nome
// 3 parametros (normais, nomeados e opcionais)

// forma de return arrow
int somaInteiros(int num1, int num2) => num1 + num2;
void somaInteirosVoid(int num1, int num2) => num1 + num2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoRecebida) {
  var nome = 'Eder';
  funcaoRecebida(nome);
}

// Typedef

typedef FuncaoRecebeNome = void Function(String nome);

void chamarUmaFuncaoDeUmParametro2(FuncaoRecebeNome funcaoRecebida) {
  var nome = 'Eder';
  funcaoRecebida(nome);
}
