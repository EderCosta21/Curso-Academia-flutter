import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/app/core/core.dart';
import 'package:dw9_delivery_app/app/models/products_model.dart';
import 'package:dw9_delivery_app/app/repositories/repositories.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;

  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductsModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get('/products');
      return result.data
          .map<ProductsModel>((p) => ProductsModel.fromMap(p))
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar produtos', error: e.error, stackTrace: s);
      throw RepositoryException(message: ' Erro ao buscar produtos');
    }
  }
}
