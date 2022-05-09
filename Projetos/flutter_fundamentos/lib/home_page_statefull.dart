import 'package:flutter/material.dart';

class HomePageStateFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageStateFull();
  }
}

class _HomePageStateFull extends State<HomePageStateFull> {
  String texto = ' Estou na stateFullWidget';

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              setState(() {
                texto = 'Alterado o texto via button stateFullWidget';
              });
            },
            child: const Text('Alterar Texto'),
          )
        ],
      ),
    );
  }
}
