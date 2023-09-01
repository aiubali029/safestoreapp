
import 'dart:convert';

import 'package:my_project/model/brand_model.dart';

class Subcategory {
  final int id;
  final int categoryId;
  final String name;
  final String slug;
  final int status;
  final String createdAt;
  final String updatedAt;
  final List<Brand> brand;
  final List<dynamic> service;

  Subcategory({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.slug,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.brand,
    required this.service,
  });

  factory Subcategory.fromJson(String str) => Subcategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Subcategory.fromMap(Map<String, dynamic> json) => Subcategory(
    id: json["id"],
    categoryId: json["category_id"],
    name: json["name"],
    slug: json["slug"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    brand: List<Brand>.from(json["brand"].map((x) => Brand.fromMap(x))),
    service: List<dynamic>.from(json["service"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "category_id": categoryId,
    "name": name,
    "slug": slug,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "brand": List<dynamic>.from(brand.map((x) => x.toMap())),
    "service": List<dynamic>.from(service.map((x) => x)),
  };
}