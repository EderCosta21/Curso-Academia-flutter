String? nome;
void main() {
  var sobrenome = 'Costa';
  // var nomeCompleto = ((nome != null) ? nome! + 'Eder' : 'Eder Costa');
  var nomeCompleto = (nome ?? 'Eder') + sobrenome;
  print(nomeCompleto);

  String? nomeCompleto2 = null;
  print(nomeCompleto2 ?? 'Eder Costa');
}
