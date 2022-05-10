import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/home_page.dart';

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

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('depois da tela ter sido carregada');

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePageStateless(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
