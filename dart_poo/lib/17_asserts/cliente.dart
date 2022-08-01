class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;
  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  }) : assert(
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            ' voce enviou cpf e cnpj');
}
