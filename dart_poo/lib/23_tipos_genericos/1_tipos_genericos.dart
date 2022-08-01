// ignore_for_file: camel_case_types

void main(List<String> args) {
  List<int> numeros = [1, 2, 3];
  numeros.add(1);

  Map<String, int> mapa = {
    'a': 2,
  };

  final caixas = Caixa<Bola>();
  caixas.adicionar(Bola());
  Bola? itemCaixa = caixas.getItens();
  print(itemCaixa);

  final caixasBoneca = Caixa<Boneca>();
  caixasBoneca.adicionar(Boneca());
  Boneca? itemBoneca = caixasBoneca.getItens();
  print(caixasBoneca.alturaitem());

  // final caixaComputador = Caixa<Computador>();
}

// class caixa {
//    List<dynamic> itens = [];
//   dynamic item = [];

//   void adicionar(Bola bola) {
//     item = bola;
//      itens.add(bola);
//   }

//   void adicionarBonecas(Boneca boneca) {
//     item = boneca;
//      itens.add(boneca);
//   }

//    List<Boneca> getItens() {
//   dynamic getItens() {
//      return itens;
//     return item;
//   }
// }

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
    // itens.add(bola);
  }

  void adicionarBonecas(I item) {
    _item = item;
    // itens.add(boneca);
  }

  // List<Boneca> getItens() {
  I? getItens() {
    // return itens;
    return _item;
  }

  double alturaitem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 60.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 15.0;
  }
}

class Computador {}
