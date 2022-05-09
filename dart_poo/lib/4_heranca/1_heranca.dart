// ignore: file_names
import 'package:dart_poo/4_heranca/cachorro.dart';

void main() {
  var dog = Cachorro(idade: 10);

  dog.tamanho = 'pequeno';

  print('''
        Cachorro:
          Tamanho: ${dog.tamanho}
          idade: ${dog.idade}
          Idade: ${dog.calcularIdadeHumana()}

''');
}
