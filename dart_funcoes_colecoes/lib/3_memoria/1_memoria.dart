void main(List<String> args) {
  var lista = ['Eder'];

  print(lista.hashCode);
  funcao(lista);
  print(lista);

  var nome = ' Eder Costa';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

  var listAdd = ['eder', 'costa'];
  print(listAdd);
  add(listAdd);
  print(listAdd);
}

void funcao(List<String> nomes) {
  nomes.add('Costa');
}

void funcao2(String nome) {
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

// correto para lista

List<String> add(List<String> nomes) {
  var newName = [...nomes];
  newName.add('Eder gonzaga');
  print(newName);
  return newName;
}
