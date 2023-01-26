import 'dart:convert';

class ProductsModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  ProductsModel({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'image': image,
    };
  }

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      description: map['description'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsModel.fromJson(String source) =>
      ProductsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductsModel(id: $id, name: $name, price: $price, description: $description, image: $image)';
  }
}
