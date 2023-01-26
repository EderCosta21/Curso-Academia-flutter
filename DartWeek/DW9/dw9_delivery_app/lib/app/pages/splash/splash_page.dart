import 'package:dw9_delivery_app/app/core/ui/helpers/size_extentions.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: const Color(0XFF140E0E),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentyHeight(0.1),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 100,
                  ),
                  DeliveryButton(
                    width: context.percentyWidth(.6),
                    height: 35,
                    label: 'ACESSAR',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
