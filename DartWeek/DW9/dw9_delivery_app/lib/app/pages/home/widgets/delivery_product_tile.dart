// ignore_for_file: must_be_immutable

import 'package:dw9_delivery_app/app/app.dart';
import 'package:flutter/material.dart';

class DeliveryProductTile extends StatefulWidget {
  ProductsModel produto;
  DeliveryProductTile({
    Key? key,
    required this.produto,
  }) : super(key: key);

  @override
  State<DeliveryProductTile> createState() => _DeliveryProductTileState();
}

class _DeliveryProductTileState extends State<DeliveryProductTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: widget.produto.image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    widget.produto.name,
                    style:
                        context.textStyles.textExtraBold.copyWith(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    widget.produto.description,
                    style:
                        context.textStyles.textRegular.copyWith(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    widget.produto.price.currencyPTBR,
                    style: context.textStyles.textMedium.copyWith(
                        fontSize: 20, color: context.colors.secondary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
