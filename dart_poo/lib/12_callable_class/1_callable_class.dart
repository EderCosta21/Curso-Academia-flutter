import 'package:dart_poo/12_callable_class/enviar_email.dart';

void main(List<String> args) {
  var enviar = EnviaEmail();

  enviar('novo email');

  print(enviar.enviar('email'));
}
