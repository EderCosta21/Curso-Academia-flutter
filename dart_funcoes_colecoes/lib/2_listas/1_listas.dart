void main() {
  var numeros = List.generate(10, (index) => index);
  // numeros.forEach(printAcademy);

  // Expand
  // Array BiDimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  //printAcademy(lista[1][1]);

  // juntar 2 listas
  var listaNova = lista.expand((element) => element).toList();
  //print(listaNova);

  //ANY
  printAcademy('');
  printAcademy('<-- ANY -->');
  final listaBusca = ['eder', 'Joao', 'Rodrigo'];

  listaBusca.any((element) => element == 'Joao')
      ? print('tem joao')
      : print('não tem joao');

  //every chegar uma condição dentro da lista
  printAcademy('');
  printAcademy('<-- every -->');
  final listaBusca2 = ['oeder', 'Joao', 'Rodrigo'];
  listaBusca2.every((element) => element.contains('J'))
      ? print('todos nomes tem a letra J')
      : print(' nem todos nomes tem a letra J');

  //.sort -> ordenação
  printAcademy('');
  printAcademy('<-- .sort -->');
  final listOrderInt = [2, 14, 5, 6, 7, 11, 0, 131];

  listOrderInt.sort();
  printAcademy(listOrderInt);

  final listOrderString = ['Eder', 'Joao', 'Rodrigo', 'Anderson'];

  listOrderString.sort();
  printAcademy(listOrderString);

  // ordenação por algo especifico
  final listaPacientes = [
    'Eder Costa|35',
    'Joao Chaves|11',
    'Rodrigo Rahman|37',
    'Rodrigo 2|31',
    'Rodrigo 1|17',
    'Anderson Aurelio|27'
  ];

  listaPacientes.sort(((a, b) {
    final dados1 = a.split('|');
    final dados2 = b.split('|');

    final idadePaciente1 = int.parse(dados1[1]);
    final idadePaciente2 = int.parse(dados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  }));
  printAcademy(listaPacientes);

  //.sort com compareTo
  // -> ordenação
  printAcademy('');
  printAcademy('<-- .sort com compareTo -->');

  // ordenação por algo especifico
  final listaPacientes2 = [
    'Eder Costa|35',
    'Joao Chaves|11',
    'Rodrigo Rahman|37',
    'Rodrigo 2|31',
    'Rodrigo 1|17',
    'Anderson Aurelio|27'
  ];

  listaPacientes2.sort(((a, b) {
    final dados1 = a.split('|');
    final dados2 = b.split('|');

    final idadePaciente1 = int.parse(dados1[1]);
    final idadePaciente2 = int.parse(dados2[1]);
    return idadePaciente1.compareTo(idadePaciente2);
  }));
  printAcademy(listaPacientes2);

  // Pacientes por funcao
  final listaPacientes3 = [
    'Eder Costa|35',
    'Joao Chaves|11',
    'Rodrigo Rahman|37',
    'Rodrigo 2|31',
    'Rodrigo 1|17',
    'Anderson Aurelio|27'
  ];
  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}

void printAcademy(Object value) => print(value);

void funcaoQualquer(List<String> pacientes) {
  final aux = [...pacientes];
  aux.sort(((a, b) {
    final dados1 = a.split('|');
    final dados2 = b.split('|');

    final idadePaciente1 = int.parse(dados1[1]);
    final idadePaciente2 = int.parse(dados2[1]);
    return idadePaciente1.compareTo(idadePaciente2);
  }));
  print(aux);
}
