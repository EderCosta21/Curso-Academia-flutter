// Public  -> public
// Privado -> private

// Caracteristicas
// Comportamentos

class Camiseta {
  // Atributos de instancia
  String? tamanho;
  String? _cor; // variavel private com _
  String? marca;

// Atributo de classe
  static const String nome = 'camiseta';
  static const String _nome2 = 'camiseta';

// Método de classe
  static String recuperarNome() => nome;
  static String _recuperarNome2() => nome;

  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verde');
    }
  }

// funcoes dentro de classes são chamadas de métodos
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'não pode lavar na maquina';
    } else {
      return ' pode lavar na maquina';
    }
  }

  String _tipoDeLavagem2() {
    if (marca == 'Nike') {
      return 'não pode lavar na maquina';
    } else {
      return ' pode lavar na maquina';
    }
  }
}
