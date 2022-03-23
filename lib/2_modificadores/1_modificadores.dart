void main() {
  String nomeCompleto = 'Eder Costa';
  print(nomeCompleto);

  nomeCompleto = 'Eder';

  print(nomeCompleto);

// Variaveis Finais :
// Não podem ser alteradas depois de inicializadas (imutaveis)
// São definidas do programa em tempo de execução (Runtime)
  final nomeCompletoFinal = 'Eder Gonzaga Costa';
  final nomeCompletoFinal2 = nomeCompletoFinal;
  print(nomeCompletoFinal);

//  Variaveis const
// Não podem ser alteradas depois de inicializadas (imutaveis)
// São definidade no programa em tempo de COMPILAÇÂO !!!!!!
// Não podem receber valores de outras variaveis a não ser que essas variaveis sejem const tambem

 const nomeCompletoConst = 'Eder Gonzaga Costa';
 // Atribuição entre constantes só pode ser feita entre elas 
 // const nomeCompletoConst2 = nomeCompleto; 
}
