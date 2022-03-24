void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:

  var nomes;
  print('<------------------------------------>');
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  for (var pacient in pacientes) {
    var dados = pacient.split('|');
    if (int.parse(dados[1]) > 20) {
      print(dados[0]);
    }
  }
  print('<------------------------------------>');
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)

  final desenvolvedor = [];
  final estudante = [];
  final dentista = [];
  final jornalista = [];
  for (var pacient in pacientes) {
    var dados = pacient.split('|');
    final nome = dados[0];
    final profissao = dados[2];

    if (profissao.toLowerCase() == 'desenvolvedor') {
      desenvolvedor.add(nome);
    }
    if (profissao.toLowerCase() == 'estudante') {
      estudante.add(nome);
    }
    if (profissao.toLowerCase() == 'dentista') {
      dentista.add(nome);
    }
    if (profissao.toLowerCase() == 'jornalista') {
      jornalista.add(nome);
    }
  }

  print('desenvolvedor: possui ${desenvolvedor.length} pacientes');
  desenvolvedor.forEach(print);
  print('estudante: possui ${estudante.length} pacientes');
  estudante.forEach(print);
  print('dentista: possui ${dentista.length} pacientes');
  dentista.forEach(print);
  print('jornalista: possui ${jornalista.length} pacientes');
  jornalista.forEach(print);

  print('<------------------------------------>');
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  for (var pacient in pacientes) {
    var dados = pacient.split('|');
    if (dados[3] == 'SP') {
      print(dados[0]);
    }
  }
}
