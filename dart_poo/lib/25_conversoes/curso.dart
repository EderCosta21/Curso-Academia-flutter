class Curso {
  String nome;
  String descricao;
  Curso({
    required this.nome,
    required this.descricao,
  });

  @override
  String toString() => 'nome: $nome, descricao: $descricao';
}
