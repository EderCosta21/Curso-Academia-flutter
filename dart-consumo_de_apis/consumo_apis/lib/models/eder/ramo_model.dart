import 'dart:convert';

class RamoModel {
  int id;
  final String descricao;
  RamoModel({
    required this.id,
    required this.descricao,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'descricao': descricao,
    };
  }

  factory RamoModel.fromMap(Map<String, dynamic> map) {
    return RamoModel(
      id: map['id']?.toInt() ?? 0,
      descricao: map['descricao'] ?? '',
    );
  }

  factory RamoModel.fromJson(String source) =>
      RamoModel.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());
}
