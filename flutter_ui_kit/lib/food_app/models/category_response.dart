// To parse this JSON data, do
//
//     final categoryResponse = categoryResponseFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

CategoryResponse categoryResponseFromJson(String str) =>
    CategoryResponse.fromJson(json.decode(str));

String categoryResponseToJson(CategoryResponse data) =>
    json.encode(data.toJson());

class CategoryResponse {
  CategoryResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<CategoriesData>? data;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
        success: json["success"],
        message: json["message"],
        data: List<CategoriesData>.from(
            json["data"].map((x) => CategoriesData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CategoriesData {
  CategoriesData({
    required this.id,
    required this.name,
    required this.petType,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.imageUrl,
    required this.CategoriesDataId,
  });

  String id;
  String name;
  String petType;
  String image;
  DateTime createdAt;
  DateTime updatedAt;
  String imageUrl;
  String CategoriesDataId;

  factory CategoriesData.fromJson(Map<String, dynamic> json) => CategoriesData(
        id: json["_id"],
        name: json["name"],
        petType: json["petType"],
        image: json["image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imageUrl: json["imageUrl"],
        CategoriesDataId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "petType": petType,
        "image": image,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "imageUrl": imageUrl,
        "id": CategoriesDataId,
      };
}
