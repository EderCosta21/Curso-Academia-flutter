import 'package:dart_poo/8_interfaces/carros.dart';
import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

//variaveis de tipo superior e atributos de classe
//não são autos promovidas
Carro golCarro2 = Gol();

void main(List<String> args) {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // quando checamos se a variavel é(is) de um tipo
  // Caso ele seja o dart vai automaticamente converter
  // essa instancia para a classe do tipo
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  //(golCarro as Gol).tipoDeRodas();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());
  printarDados(uno);
  printarDados(gol);
}

void printarDados(Carro carro) {
  print('''
          Carro:
            Tipo: ${carro.runtimeType}
            Portas: ${carro.portas}
            Rodas: ${carro.rodas}
            Motor: ${carro.motor}
            Velocidade Maxima: ${carro.velocidadeMaxima()}
            Tipos de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponivel'}
''');
}
