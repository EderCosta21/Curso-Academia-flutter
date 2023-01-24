import 'package:dw9_delivery_app/app/app.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class Dw9DeliveryApp extends StatefulWidget {
  const Dw9DeliveryApp({Key? key}) : super(key: key);

  @override
  State<Dw9DeliveryApp> createState() => _Dw9DeliveryAppState();
}

class _Dw9DeliveryAppState extends State<Dw9DeliveryApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      title: 'Delivery App',
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}