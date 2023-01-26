import 'package:dw9_delivery_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();
  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => ProductsRepositoryImpl(
              dio: context.read(),
            ),
          )
        ],
        child: const HomePage(),
      );
}
