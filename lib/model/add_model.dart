import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:my_project/model/brand_model.dart';
import 'package:my_project/model/category_model.dart';
import 'package:my_project/model/subcategory_model.dart';

class Ad {
  final int id;
  final String title;
  final dynamic userName;
  final String slug;
  final int userId;
  final dynamic model;
  final int categoryId;
  final int subcategoryId;
  final dynamic brandId;
  final String currencySymbol;
  final int price;
  final String description;
  final String phone;
  final String email;
  final int showEmail;
  final bool showPhone;
  final dynamic phone2;
  final String thumbnail;
  final int featured;
  final int totalReports;
  final int totalViews;
  final int isBlocked;
  final String whatsapp;
  final int showWhatsapp;
  final String status;
  final int orderId;
  final dynamic metaKeywords;
  final dynamic metaDescription;
  final dynamic authenticity;
  final dynamic edition;
  final dynamic locality;
  final dynamic neighborhood;
  final String address;
  final dynamic postcode;
  final dynamic place;
  final int cityId;
  final int regionId;
  final int countryId;
  final String countryCode;
  final dynamic long;
  final dynamic lat;
  final int isPromoted;
  final dynamic draftedAt;
  final String createdAt;
  final String updatedAt;
  final int createdBy;
  final int updatedBy;
  final dynamic adsType;
  final dynamic propertySize;
  final dynamic propertyUnit;
  final dynamic vehicleManufacture;
  final dynamic vehicleEngineCapacity;
 // final List<String> vehicleFuleType;
  final dynamic vehicleTransmission;
  final dynamic vehicleBodyType;
  final dynamic propertyPriceType;
  final dynamic propertyType;
  final dynamic condition;
  final dynamic registrationYear;
  final dynamic featureDuration;
  final dynamic designation;
  final dynamic experience;
  final dynamic jobType;
  final dynamic requiredEducation;
  final dynamic salaryFrom;
  final dynamic salaryTo;
  final dynamic deadline;
  final dynamic employerName;
  final String website;
  final dynamic employerLogo;
  final dynamic textbookType;
  final dynamic receiveIsEmail;
  final dynamic receiveIsPhone;
  final dynamic employerEmail;
  final dynamic employerPhone;
  final String cityName;
  final String imageUrl;
  final bool isWishlist;
  final bool isCodRequest;
  final String fullAddress;
 // final Customer customer;
  final Category category;
  final Subcategory subcategory;
  final Brand brand;
  final List<Ad> adFeatures;
  final List<Gallery> galleries;
 // final City city;

  Ad({
    required this.id,
    required this.title,
    required this.userName,
    required this.slug,
    required this.userId,
    required this.model,
    required this.categoryId,
    required this.subcategoryId,
    required this.brandId,
    required this.currencySymbol,
    required this.price,
    required this.description,
    required this.phone,
    required this.email,
    required this.showEmail,
    required this.showPhone,
    required this.phone2,
    required this.thumbnail,
    required this.featured,
    required this.totalReports,
    required this.totalViews,
    required this.isBlocked,
    required this.whatsapp,
    required this.showWhatsapp,
    required this.status,
    required this.orderId,
    required this.metaKeywords,
    required this.metaDescription,
    required this.authenticity,
    required this.edition,
    required this.locality,
    required this.neighborhood,
    required this.address,
    required this.postcode,
    required this.place,
    required this.cityId,
    required this.regionId,
    required this.countryId,
    required this.countryCode,
    required this.long,
    required this.lat,
    required this.isPromoted,
    required this.draftedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.createdBy,
    required this.updatedBy,
    required this.adsType,
    required this.propertySize,
    required this.propertyUnit,
    required this.vehicleManufacture,
    required this.vehicleEngineCapacity,
   // required this.vehicleFuleType,
    required this.vehicleTransmission,
    required this.vehicleBodyType,
    required this.propertyPriceType,
    required this.propertyType,
    required this.condition,
    required this.registrationYear,
    required this.featureDuration,
    required this.designation,
    required this.experience,
    required this.jobType,
    required this.requiredEducation,
    required this.salaryFrom,
    required this.salaryTo,
    required this.deadline,
    required this.employerName,
    required this.website,
    required this.employerLogo,
    required this.textbookType,
    required this.receiveIsEmail,
    required this.receiveIsPhone,
    required this.employerEmail,
    required this.employerPhone,
    required this.cityName,
    required this.imageUrl,
    required this.isWishlist,
    required this.isCodRequest,
    required this.fullAddress,
   // required this.customer,
    required this.category,
    required this.subcategory,
    required this.brand,
    required this.adFeatures,
    required this.galleries,
  //  required this.city,
  });

  factory Ad.fromJson(String str) => Ad.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ad.fromMap(Map<String, dynamic> json) => Ad(
    id: json["id"],
    title: json["title"],
    userName: json["user_name"],
    slug: json["slug"],
    userId: json["user_id"],
    model: json["model"],
    categoryId: json["category_id"],
    subcategoryId: json["subcategory_id"],
    brandId: json["brand_id"],
    currencySymbol: json["currency_symbol"],
    price: json["price"],
    description: json["description"],
    phone: json["phone"],
    email: json["email"],
    showEmail: json["show_email"],
    showPhone: json["show_phone"],
    phone2: json["phone_2"],
    thumbnail: json["thumbnail"],
    featured: json["featured"],
    totalReports: json["total_reports"],
    totalViews: json["total_views"],
    isBlocked: json["is_blocked"],
    whatsapp: json["whatsapp"],
    showWhatsapp: json["show_whatsapp"],
    status: json["status"],
    orderId: json["order_id"],
    metaKeywords: json["meta_keywords"],
    metaDescription: json["meta_description"],
    authenticity: json["authenticity"],
    edition: json["edition"],
    locality: json["locality"],
    neighborhood: json["neighborhood"],
    address: json["address"],
    postcode: json["postcode"],
    place: json["place"],
    cityId: json["city_id"],
    regionId: json["region_id"],
    countryId: json["country_id"],
    countryCode: json["country_code"],
    long: json["long"],
    lat: json["lat"],
    isPromoted: json["is_promoted"],
    draftedAt: json["drafted_at"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"]??0,
    adsType: json["ads_type"],
    propertySize: json["property_size"],
    propertyUnit: json["property_unit"],
    vehicleManufacture: json["vehicle_manufacture"],
    vehicleEngineCapacity: json["vehicle_engine_capacity"],
  //  vehicleFuleType: List<String>.from(json["vehicle_fule_type"].map((x) => x)),
    vehicleTransmission: json["vehicle_transmission"],
    vehicleBodyType: json["vehicle_body_type"],
    propertyPriceType: json["property_price_type"],
    propertyType: json["property_type"],
    condition: json["condition"],
    registrationYear: json["registration_year"],
    featureDuration: json["feature_duration"],
    designation: json["designation"],
    experience: json["experience"],
    jobType: json["job_type"],
    requiredEducation: json["required_education"],
    salaryFrom: json["salary_from"],
    salaryTo: json["salary_to"],
    deadline: json["deadline"],
    employerName: json["employer_name"],
    website: json["website"]??"",
    employerLogo: json["employer_logo"],
    textbookType: json["textbook_type"],
    receiveIsEmail: json["receive_is_email"],
    receiveIsPhone: json["receive_is_phone"],
    employerEmail: json["employer_email"],
    employerPhone: json["employer_phone"],
    cityName: json["city_name"],
    imageUrl: json["image_url"],
    isWishlist: json["is_wishlist"],
    isCodRequest: json["is_cod_request"],
    fullAddress: json["full_address"],
    //customer: Customer.fromJson(json["customer"]),
    category: Category.fromJson(json["category"]),
    subcategory: Subcategory.fromJson(json["subcategory"]),
    brand: json["brand"],
    adFeatures: List<Ad>.from(json["ad_features"].map((x) => x)),
    galleries: List<Gallery>.from(json["galleries"].map((x) => Gallery.fromMap(x))),
    //city: City.fromJson(json["city"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "user_name": userName,
    "slug": slug,
    "user_id": userId,
    "model": model,
    "category_id": categoryId,
    "subcategory_id": subcategoryId,
    "brand_id": brandId,
    "currency_symbol": currencySymbol,
    "price": price,
    "description": description,
    "phone": phone,
    "email": email,
    "show_email": showEmail,
    "show_phone": showPhone,
    "phone_2": phone2,
    "thumbnail": thumbnail,
    "featured": featured,
    "total_reports": totalReports,
    "total_views": totalViews,
    "is_blocked": isBlocked,
    "whatsapp": whatsapp,
    "show_whatsapp": showWhatsapp,
    "status": status,
    "order_id": orderId,
    "meta_keywords": metaKeywords,
    "meta_description": metaDescription,
    "authenticity": authenticity,
    "edition": edition,
    "locality": locality,
    "neighborhood": neighborhood,
    "address": address,
    "postcode": postcode,
    "place": place,
    "city_id": cityId,
    "region_id": regionId,
    "country_id": countryId,
    "country_code": countryCode,
    "long": long,
    "lat": lat,
    "is_promoted": isPromoted,
    "drafted_at": draftedAt,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "ads_type": adsType,
    "property_size": propertySize,
    "property_unit": propertyUnit,
    "vehicle_manufacture": vehicleManufacture,
    "vehicle_engine_capacity": vehicleEngineCapacity,
    //"vehicle_fule_type": List<dynamic>.from(vehicleFuleType.map((x) => x)),
    "vehicle_transmission": vehicleTransmission,
    "vehicle_body_type": vehicleBodyType,
    "property_price_type": propertyPriceType,
    "property_type": propertyType,
    "condition": condition,
    "registration_year": registrationYear,
    "feature_duration": featureDuration,
    "designation": designation,
    "experience": experience,
    "job_type": jobType,
    "required_education": requiredEducation,
    "salary_from": salaryFrom,
    "salary_to": salaryTo,
    "deadline": deadline,
    "employer_name": employerName,
    "website": website,
    "employer_logo": employerLogo,
    "textbook_type": textbookType,
    "receive_is_email": receiveIsEmail,
    "receive_is_phone": receiveIsPhone,
    "employer_email": employerEmail,
    "employer_phone": employerPhone,
    "city_name": cityName,
    "image_url": imageUrl,
    "is_wishlist": isWishlist,
    "is_cod_request": isCodRequest,
    "full_address": fullAddress,
   // "customer": customer.toJson(),
    "category": category.toJson(),
    "subcategory": subcategory.toJson(),
    "brand": brand,
    "ad_features": List<Ad>.from(adFeatures.map((x) => x)),
    "galleries": List<dynamic>.from(galleries.map((x) => x.toJson())),
   // "city": city.toJson(),
  };
}


class Gallery {
  final int id;
  final int adId;
  final String image;
  final String imageType;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String imageUrl;

  Gallery({
    required this.id,
    required this.adId,
    required this.image,
    required this.imageType,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
  });

  factory Gallery.fromJson(String str) => Gallery.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Gallery.fromMap(Map<String, dynamic> json) => Gallery(
    id: json["id"],
    adId: json["ad_id"],
    image: json["image"],
    imageType: json["image_type"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "ad_id": adId,
    "image": image,
    "image_type": imageType,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "image_url": imageUrl,
  };
}

