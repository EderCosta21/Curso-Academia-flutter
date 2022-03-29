void main(List<String> args) {
  // map de dois campos String
  final paciente = <String, String>{
    'nome ': 'Eder Gonzaga',
    'curso ': 'Academia do flutter',
    'cidade ': 'Itajubá',
    'estado ': 'MG',
  };

  // map null safety
  // O mapa pode ser nulo mas se criado de conter a chave e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

  Map<String?, String> pacienteNullSafety0 = {
    null: 'texto',
  };
// map primeiro campo null
  var pacienteNullSafety2 = <String?, String>{
    null: 'texto',
  };
  // map segundo  campo null
  var pacienteNullSafety3 = <String, String?>{
    'texto': null,
  };

  // adicionar dados ao map

  var produtos = <String, String>{};
  // Só sera adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome2', () => 'Refrigerante');

  print(produtos);

  // fazer update em alguma chave
  produtos.update('nome2', (value) => 'Refrigerante Coca Cola');
  // fazer update em um valor que não existe ele vai criar um novo
  produtos.update('preco', (value) => '10', ifAbsent: (() => '10'));
  print(produtos);

  //Recuperando o valor, acessando a chave especifica
  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preco']}');

  // mapear todos os itens no map
  // somente para itens não assyncrono
  produtos.forEach((key, value) {
    print('Chave : $key : $value');
  });
  // fazer algo assyncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave : ${entry.key} : ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave : $key');
  }

  for (var value in produtos.values) {
    print('Chave : $value');
  }

  // utilizar  o map
  var novoProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toUpperCase());
  });

  print(novoProdutos);
  // pode ser Object ou dynamic
  var mapa = <String, Object>{
    'nome': 'Eder Costa',
    'cursos': [
      {'nome': 'Academia do Flutter', 'descricao': 'Melhor curso do Brasil'},
      {'nome': 'Academia do Flutter', 'descricao': 'Melhor curso do Brasil'},
    ]
  };

  print(mapa['cursos']);
}
