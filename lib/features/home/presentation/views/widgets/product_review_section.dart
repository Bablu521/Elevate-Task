import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class ProductReviewSection extends StatelessWidget {
  const ProductReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Review", style: AppStyles.style12),
        SizedBox(width: 3),
        Text("(4.2)", style: AppStyles.style12),
        SizedBox(width: 3),
        Icon(Icons.star, color: AppColors.starColor, size: 18),
      ],
    );
  }
}
