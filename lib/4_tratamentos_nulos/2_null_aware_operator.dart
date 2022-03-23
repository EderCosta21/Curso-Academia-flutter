String? nome;
void main() {
  var nomeCompleto = ((nome != null) ? nome! + 'Eder' : 'Eder Costa');
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + 'Eder';
  } else {
    nomeCompleto2 = 'Eder Costa';
  }
  print(nomeCompleto2);

  var nomeLocal = nome;
  if (nomeLocal == null) {
    nomeLocal = 'Eder';
  }

  var nomeCompleto3 = nomeLocal + 'Costa';
  print(nomeCompleto3);
}
