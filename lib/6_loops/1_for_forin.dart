void main() {
  var numeros = List.generate(10, (index) => index + 1);
  var nomes = ['eder', 'ze', 'maria', 'joao', 'marcos'];

  print('imprimindo numeros com for convencional');

  for (int i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('imprimindo menos com for convencional');

  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }
  print('imprimindo menos com for convencional com break');
  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'ze') {
      break;
    }
  }

// utilizando for-in
  print('Imprimindo numero com for-in');
  for (var num in numeros) {
    print(num);
  }
  print('Imprimindo nome com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  print('Imprimindo numero com for-in com break');
  for (var nome in nomes) {
    print(nome);
    if (nomes == 'ze') {
      break;
    }
  }

  print('imprimindo menos com for convencional com continue');

  for (int i = 0; i < nomes.length; i++) {
    if (nomes[i] == 'ze') {
      continue;
    }
    print(nomes[i]);
  }
}
