import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar'),
        backgroundColor: Colors.red[200],
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.account_balance_outlined),
          ),
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      drawer: const Drawer(
        child: Text('Drawer aberto'),
      ),
      endDrawer: const Drawer(
        child: Text('Drawer aberto'),
      ),
      body: const Center(child: Text('Primeira home page')),
    );
  }
}
