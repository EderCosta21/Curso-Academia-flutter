import 'package:dw9_delivery_app/app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailRouter {
  ProductDetailRouter._();
  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => Object(),
          )
        ],
        child: const ProductDetailPage(),
      );
}
