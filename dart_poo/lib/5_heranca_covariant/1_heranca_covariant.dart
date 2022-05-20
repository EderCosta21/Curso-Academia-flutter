import 'package:dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_poo/5_heranca_covariant/fruta.dart';
import 'package:dart_poo/5_heranca_covariant/humano.dart';
import 'package:dart_poo/5_heranca_covariant/macaco.dart';

void main(List<String> args) {
  var macaco = Macaco();
  var humano = Humano();
  humano.comer(Fruta());
  macaco.comer(Banana('nanica'));
}
