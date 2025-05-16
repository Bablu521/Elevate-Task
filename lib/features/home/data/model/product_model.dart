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
      image: json["image"] ?? "",
      price: json["price"] ?? 0,
      rating: RatingModel.fromJson(json["rating"])
    );
  }
}

class RatingModel {
  final double? rate;
  final int? count;

  RatingModel({this.rate, this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(rate: json['rate'] ?? 0, count: json['count'] ?? 0);
  }
}
