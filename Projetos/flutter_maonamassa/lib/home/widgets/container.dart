import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(10), // definir na onde utilizar
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            //borderRadius: BorderRadius.all(Radius.circular(10)),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              )
            ]),
      )),
    );
  }
}
