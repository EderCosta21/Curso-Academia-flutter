void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print(' //! 1 - Remova os pacientes duplicados e apresente a nova lista');
  var newPessoas = pessoas.toSet().map((e) => e.split('|').toList());
  newPessoas.forEach((p) => print(p[0]));
  print(' ');

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      ' //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');

  final mapSexo = <String, List<String>>{};

  for (var pessoa in newPessoas) {
    final sexo = pessoa[2].toLowerCase();

    final listaM = mapSexo['M'] ?? <String>[];
    final listaF = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaM.add(pessoa[0]);
    }

    if (sexo == 'feminino') {
      listaF.add(pessoa[0]);
    }

    mapSexo['M'] = listaM;
    mapSexo['F'] = listaF;
  }
  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];
  print(' Possui ${masculinos.length} masculinos');
  masculinos.forEach(print);
  print(' Possui ${femininos.length} masculinos');
  femininos.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print(' ');
  final pessoasMaior18 = newPessoas.where((p) {
    final idade = int.parse(p[1]) ?? 0;
    return idade > 18;
  });
  print(
      '3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  pessoasMaior18.forEach((p) => print(p[0]));

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print(' ');
  final maisVelha = [...newPessoas];
  maisVelha.sort((a, b) {
    final idade1 = int.tryParse(a[1]) ?? 0;
    final idade2 = int.tryParse(b[1]) ?? 0;
    return idade2.compareTo(idade1);
  });
  print('4 - Encontre a pessoa mais velha e apresente o nome dela. ');
  print('A pessoa mais velha é ${maisVelha.first}');
  print('A pessoa mais nova é ${maisVelha.last}');
}
