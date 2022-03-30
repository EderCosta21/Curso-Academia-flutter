void main(List<String> args) {
  var idade = '38 ';

  String? nome;

  try {
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();

    // forçando uma exception
    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print(e);
    print(s);
    print('Erro ao converter idade');
  } on Exception {
    print('Erro idade ==38');
  } on TypeError {
    print('Erro ao type error');
  } catch (e) {
    print('Erro ao executar programa ');
  } finally {
    print('finally');
  }
}
