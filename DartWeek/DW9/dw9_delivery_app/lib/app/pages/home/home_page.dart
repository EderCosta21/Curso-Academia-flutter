import 'package:dw9_delivery_app/app/app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        // showError('deu erro');
        showInfo('message');
        // showSuccess('message');
        // showLoader();
        // await Future.delayed(Duration(seconds: 2));
        // hideLoader();
      }),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  produto: ProductsModel(
                      id: 1,
                      name: "X-Salada",
                      description:
                          "Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese",
                      price: 15.0,
                      image:
                          "https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
