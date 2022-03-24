void main(List<String> args) {
  // ? = Nullable(Aceita nulo)
  // Sem nada = non -null

// Não aceita nulo
  var nomes = [];

  List<String>? nomesNulos;

// Nada pode ser nulo
  List<String> nomesInternosNaoAceitaNulos = ['null'];
  var nomesInternosNaoAceitaNulos1 = ['null'];

  // Não aceita lista nula e itens pode ser nulos
  List<String?> nomesInternosAceitaNulo = ['Eder', null, 'Costa'];
  var nomesInternosAceitaNulo1 = <String?>['Eder', null, 'Costa'];

// Aceita lista nula e itens tbm pode ser nulo
  List<String?>? nomesInternosAceitaNulo21 = null;
}
