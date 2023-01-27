import 'package:auto_size_text/auto_size_text.dart';
import 'package:dw9_delivery_app/app/app.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenHeight,
            height: context.percentyHeight(.4),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'X-burger',
              style: context.textStyles.textExtraBold.copyWith(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                child: Text(
                  'Lanche acompanha pão, hambúguer, mussarela e maionese',
                  style: context.textStyles.textRegular.copyWith(fontSize: 14),
                ),
              ),
            ),
          ),
          const Divider(color: Colors.black),
          Row(
            children: [
              SizedBox(
                  width: context.percentyWidth(.5),
                  child: const Text('botão increment')),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: context.percentyWidth(.5),
                  height: 68,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Adicionar',
                            style: context.textStyles.textExtraBold
                                .copyWith(fontSize: 13),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              maxFontSize: 13,
                              minFontSize: 5,
                              maxLines: 1,
                              r'R$ 6.00',
                              style: context.textStyles.textExtraBold,
                            ),
                          ),
                        ],
                      )))
            ],
          )
        ],
      ),
    );
  }
}
