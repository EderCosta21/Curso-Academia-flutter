import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  String texto = ' Estou na stateless';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              texto = 'Alterado o texto via button';
            },
            child: Text('Alterar Texto'),
          )
        ],
      ),
    );
  }
}
