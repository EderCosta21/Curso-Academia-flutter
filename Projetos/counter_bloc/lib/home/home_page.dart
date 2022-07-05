import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Pages'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child:
                Text('Bloc', style: Theme.of(context).textTheme.headlineMedium),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Cubit',
                style: Theme.of(context).textTheme.headlineMedium),
          ),
        ],
      )),
    );
  }
}
