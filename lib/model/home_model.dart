
import 'dart:convert';

import 'package:my_project/model/add_model.dart';
import 'package:my_project/model/category_model.dart';

class HomeModel {
 // final List<Ad> ads;
  final List<Category> categories;
  final List<Ad> featureAds;
  final List<Ad> latestAds;
  // final int verifiedUsers;
  // final List<TopCountry> topCountry;
  // final String banner;
  // final List<dynamic> serviceTypes;
  // final List<Designation> designations;
  // final List<Brand> brands;
  // final List<Promotion> promotion;

  HomeModel({
  //  required this.ads,
    required this.categories,
    required this.featureAds,
     required this.latestAds,
    // required this.verifiedUsers,
    // required this.topCountry,
    // required this.banner,
    // required this.serviceTypes,
    // required this.designations,
    // required this.brands,
    // required this.promotion,
  });

  factory HomeModel.fromJson(String str) => HomeModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HomeModel.fromMap(Map<String, dynamic> json) => HomeModel(
 //   ads: List<Ad>.from(json["ads"].map((x) => Ad.fromJson(x))),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromMap(x))),
    featureAds: List<Ad>.from(json["featureAds"].map((x) => Ad.fromMap(x))),
    latestAds: List<Ad>.from(json["latestAds"].map((x) => Ad.fromMap(x))),
    // verifiedUsers: json["verified_users"],
    // topCountry: List<TopCountry>.from(json["topCountry"].map((x) => TopCountry.fromJson(x))),
    // banner: json["banner"],
    // serviceTypes: List<dynamic>.from(json["service_types"].map((x) => x)),
    // designations: List<Designation>.from(json["designations"].map((x) => Designation.fromJson(x))),
    // brands: List<Brand>.from(json["brands"].map((x) => Brand.fromJson(x))),
    // promotion: List<Promotion>.from(json["promotion"].map((x) => Promotion.fromJson(x))),
  );

  Map<String, dynamic> toMap() => {
   // "ads": List<dynamic>.from(ads.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x.toMap())),
    "featureAds": List<dynamic>.from(featureAds.map((x) => x.toMap())),
    "latestAds": List<dynamic>.from(latestAds.map((x) => x.toMap())),
    // "verified_users": verifiedUsers,
    // "topCountry": List<dynamic>.from(topCountry.map((x) => x.toJson())),
    // "banner": banner,
    // "service_types": List<dynamic>.from(serviceTypes.map((x) => x)),
    // "designations": List<dynamic>.from(designations.map((x) => x.toJson())),
    // "brands": List<dynamic>.from(brands.map((x) => x.toJson())),
    // "promotion": List<dynamic>.from(promotion.map((x) => x.toJson())),
  };
}
