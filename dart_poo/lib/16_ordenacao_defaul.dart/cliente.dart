class Cliente implements Comparable {
  String nome;
  String telefone;
  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(other) {
    return nome.compareTo(other.nome);
  }
}
