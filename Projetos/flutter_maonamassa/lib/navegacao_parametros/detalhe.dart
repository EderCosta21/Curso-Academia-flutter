import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Detalhe extends StatefulWidget {
  const Detalhe({Key? key}) : super(key: key);

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int? id;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // 1 forma de recuperar os argumentos passados
    /*    final param = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?; */
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Column(
        children: [Center(child: Text('O Id do produto é $id'))],
      ),
    );
  }
}
