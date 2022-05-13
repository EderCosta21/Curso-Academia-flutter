import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            // onPressed: () {
            //substituiu a pagina
            //  Navigator.of(context).pushReplacement(
            //MaterialPageRoute(
            //settings: RouteSettings(name: 'page3'),
            //   builder: (context) => const Page4(),
            //   ),
            // );
            //  },
            //child: const Text('Page 4 via page'),
            // ),
            ElevatedButton(
              onPressed: () {
                //substituiu a pagina
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => const Page4(),
                  ),
                );
              },
              child: const Text('Page 4 via page'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Page 4 via named'),
            ),
          ],
        ),
      ),
    );
  }
}
