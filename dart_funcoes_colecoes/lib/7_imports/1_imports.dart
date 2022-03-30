import 'somas/soma.dart' as soma;
// import 'somas/soma.dart' ;
import 'somas_novas/soma.dart' as nova_soma;
// import 'package:dart_funcoes_colecoes/7_imports/soma.dart';
// segundo tipo de import

void main() {
  var totaldouble = soma.somaDoubles(10.2, 1.2);
  print('Total de doubles: $totaldouble');

  var totalInt = nova_soma.somaInteiros(10, 2);
  print('Total de Inteiros: $totalInt');

  // chamar arquivos
}
