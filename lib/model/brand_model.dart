
import 'dart:convert';

class Brand {
  final int id;
  final int categoryId;
  final int subcategoryId;
  final String name;
  final String slug;
  final String createdAt;
  final String updatedAt;

  Brand({
    required this.id,
    required this.categoryId,
    required this.subcategoryId,
    required this.name,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Brand.fromJson(String str) => Brand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Brand.fromMap(Map<String, dynamic> json) => Brand(
    id: json["id"]??0,
    categoryId: json["category_id"]??0,
    subcategoryId: json["subcategory_id"]??0,
    name: json["name"]??"",
    slug: json["slug"]??"",
    createdAt: json["created_at"]??"",
    updatedAt: json["updated_at"]??"",
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "category_id": categoryId,
    "subcategory_id": subcategoryId,
    "name": name,
    "slug": slug,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}