import 'package:dw9_delivery_app/app/models/models.dart';

abstract class ProductsRepository {
  Future<List<ProductsModel>> findAllProducts();
}
