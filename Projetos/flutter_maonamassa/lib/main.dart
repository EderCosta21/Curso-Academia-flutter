import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart' as navegacao;
import 'package:flutter_maonamassa/navegacao_parametros/detalhe.dart';
import 'package:flutter_maonamassa/navegacao_parametros/lista.dart';

import 'navegacao/page1.dart';
import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //normal
      // home: const navegacao.HomePage(),
      //definir qual é a primeira pagina
      initialRoute: '/navagacao_lista',
      //por rotas named
      routes: {
        '/': (context) => const navegacao.HomePage(),
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
        '/page3': (context) => const Page3(),
        '/page4': (context) => const Page4(),
        '/navagacao_lista': (context) => const Lista(),
        '/detalhe': (context) => const Detalhe(),
      },
    );
  }
}
