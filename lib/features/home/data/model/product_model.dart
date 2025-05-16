import 'package:elevate_task/features/home/data/model/rating_model.dart';

class ProductModel {
  final String? title;
  final String? description;
  final String? category;
  final String? image;
  final double? price;
  final RatingModel? rating;

  ProductModel({
    this.title,
    this.description,
    this.category,
    this.image,
    this.price,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json["title"] ?? "title",
      description: json["description"] ?? "description",
      category: json["category"] ?? "category",
      image: json["image"] ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1XRT1LaOjoWHT6-UE7-ECExUnq5rChTkp0A&s",
      price: (json["price"] != null ) ? json["price"].toDouble() : 0.0,
      rating: (json["rating"] != null ) ? RatingModel.fromJson(json["rating"]) : null
    );
  }
}


