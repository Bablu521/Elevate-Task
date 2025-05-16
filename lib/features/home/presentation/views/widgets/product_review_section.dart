import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/data/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductReviewSection extends StatelessWidget {
  final ProductModel product;
  const ProductReviewSection({super.key , required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Review", style: AppStyles.style12),
        SizedBox(width: 3),
        Text("(${product.rating!.rate!})", style: AppStyles.style12),
        SizedBox(width: 3),
        Icon(Icons.star, color: AppColors.starColor, size: 18),
      ],
    );
  }
}
