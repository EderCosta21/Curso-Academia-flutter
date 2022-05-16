import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'parametro X');
              },
              child: const Text('ir para detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: '/detalhe'),
                  builder: (_) => const DetalhePage(
                    parametro: 'Home Page Route',
                  ),
                ));
              },
              child: const Text('ir para detalhe via push'),
            ),
          ],
        ),
      ),
    );
  }
}
