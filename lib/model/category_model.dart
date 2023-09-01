import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:my_project/model/subcategory_model.dart';

class Category {
  final int id;
  final String name;
  final String image;
  final String slug;
  final String icon;
  final int order;
  final int status;
  final String createdAt;
  final String updatedAt;
  final int totalAd;
  final dynamic createdBy;
  final dynamic updatedBy;
  final String imageUrl;
  final List<Subcategory> subcategories;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
    required this.icon,
    required this.order,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.totalAd,
    required this.createdBy,
    required this.updatedBy,
    required this.imageUrl,
    required this.subcategories,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    slug: json["slug"],
    icon: json["icon"],
    order: json["order"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    totalAd: json["total_ad"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    imageUrl: json["image_url"],
    subcategories: List<Subcategory>.from(json["subcategories"].map((x) => Subcategory.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "image": image,
    "slug": slug,
    "icon": icon,
    "order": order,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "total_ad": totalAd,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "image_url": imageUrl,
    "subcategories": List<dynamic>.from(subcategories.map((x) => x.toMap())),
  };
}


