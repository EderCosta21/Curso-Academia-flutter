import 'package:flutter/material.dart';

class ImagePages extends StatelessWidget {
  const ImagePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            //imagem de background
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image.jpeg'),
                      fit: BoxFit.contain)),
              child: const Center(
                child: Text(
                  'Imagem de fundo',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            //Imagem local
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.asset(
                'assets/image.jpeg',
                fit: BoxFit.cover, // forma de deixar a imagem
              ),
            ),
            //Imagem da internet
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
                fit: BoxFit.fill, // forma de deixar a imagem
              ),
            ),
          ],
        ),
      ),
    );
  }
}
