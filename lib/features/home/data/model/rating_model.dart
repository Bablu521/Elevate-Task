class RatingModel {
  final double? rate;
  final int? count;

  RatingModel({this.rate, this.count});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: (json['rate'] != null) ? json['rate'].toDouble() : 0.0,
      count: json['count'] ?? 0,
    );
  }
}
