// Variaveis de nivel superior não podem ser inicializadas depois
// Não é permitido
// String nomeSuperior;

String? nomeSuperior;
String nomeSuperio2 = ' Eder';

void main() {
// nada mais é que a segurança nula

// Variaveis locais não precisam ser inicializadas de cara porem
// Podem ser criadas sem valor e depois ser atribuido um valor
  String? nomeCompleto;
  String nomeCompleto2;

  //Variaveis que são nulas por padrão 
  // Se for atribuidas um valor a elas, automaticamente elas são
  // Promividas a não nulo ( non-null)

  nomeCompleto = '';
  nomeCompleto2=  ' ';

// Variaveis de nivel superior NUNCA são promovidas para não null (non-null)
  nomeSuperior = '';

    print(nomeCompleto.length);

}
