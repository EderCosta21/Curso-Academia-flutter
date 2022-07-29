import 'package:dart_poo/15_equals_hascode/pessoa.dart';

main() {
  var p1 = Pessoa(name: 'Eder', email: 'eder@gmail.com');
  var p2 = Pessoa(name: 'Eder1', email: 'ederq@gmail.com');

  print(p1.hashCode);
  print(p2.hashCode);
  print(p1.toString());
  print(p2.toString());
  if (p1 == p2) {
    print('é igual');
  } else {
    print('não é igual');
  }
}
/**
 * 1 -  p1 = Pessoa();
 * 2 -  p2 = Pessoa();
 * 
 */

/**
 *  nome = Pessoa();
 *  nome = Pessoa();
 * 
 */
