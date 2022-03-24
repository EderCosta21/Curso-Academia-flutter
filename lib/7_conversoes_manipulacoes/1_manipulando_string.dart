void main() {
  final nome = 'Eder Gonzaga Costa';
  var subStringNome = nome.substring(4);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 5);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);

// 1 forma de fazer
  if (sexoSigla == 'M') {
    print('Seu sexo é masculino');
  }
// 2 forma de fazer
  if (sexo.startsWith('Mas')) {
    print('Seu sexo é masculino');
  }

  // 3 forma de fazer
  if (sexo.toLowerCase().startsWith('mas')) {
    print('Seu sexo é masculino');
  }

  // 4 forma de fazer
  if (nome.toLowerCase().contains('costa')) {
    print('É da familia costa');
  }

  //interpolação
  var firstName = 'Eder';
  var lastname = 'Costa';
  var saudacao = 'Ola' + firstName + lastname;
  print(saudacao);

  var saudacao2 = 'Ola  $firstName  $lastname ';
  print(saudacao2);

  print('Ola ${firstName.toLowerCase()}');
  print('A soma de 2 + 2  = ${2 + 2}');

  var paciente = 'Eder Costa|25|Desenvolvedor Mobile|MG';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  // 1 forma de fazer
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);
  // 2 forma de fazer
  for (var dado in dadosPaciente) {
    print(dado);
  }
  // 3 forma de fazer
  dadosPaciente.forEach((element) {
    print(element);
  });

  var pacientes = [
    'Eder Costa|25|Desenvolvedor Mobile|MG',
    'Everton Costa|31|Desenvolvedor Mobile|SP',
    'Ana Costa|55|Desenvolvedor Mobile|RJ'
  ];
  for (var pacient in pacientes) {
    var dados = pacient.split('|');
    var nomeCompleto = dados[0];
    var nomes = nomeCompleto.split(' ');
    print(nomes.last);
  }
}
