void main(List<String> args) {
  var numList = <int?>[];
  numList.add(1);
  numList.add(2);
  numList.add(3);
  numList.add(3);
  numList.add(2);
  numList.add(6);
  numList.add(null);

  print(numList);

// set não deixa itens duplicados ;
  var numSet = <int?>{};
  numSet.add(1);
  numSet.add(2);
  numSet.add(3);
  numSet.add(2);
  numSet.add(3);
  numSet.add(6);
  numSet.add(null);
  print(numSet);

// utilizar o set para limpar os itens duplicados
  print('.toSet()');
  print(numList.toSet());

  numSet.forEach(print);

  var lista1 = {1, 2, 4, 6, 7, 8, 9};
  var lista2 = {1, 2, 3, 5, 10};
// utilizar o set para limpar os itens duplicados
  print('.difference()');
// o que tem diferente na lista 1 para lista 2
  print(lista1.difference(lista2));
// o que tem diferente na lista 2 para lista 1
  print(lista2.difference(lista1));

// Juntar duas listas sem repitir valores
  print('.union()');
  print(lista1.union(lista2));

  // Printar o que tem de iquais nas duas listas
  print('.intersection()');
  print(lista1.intersection(lista2));

  var nomes1 = {'eder', 'gonzaga', 'costa'};
  var nomes2 = {'eder', 'ze', 'costa'};
  print(nomes1.intersection(nomes2));

  // procurar determinado item, se tiver ele tras, se não return null
  print('.lookup()');
  print(lista1.lookup(1));
  print(nomes1.lookup(1));

// para busca qualquer item dentro da lista tem que utilizar elementAt e passa o indice
  nomes1.elementAt(0);
//  ou pode converter a lista
  nomes1.toList()[0];
}
