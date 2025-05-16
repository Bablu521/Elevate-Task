import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class ProductPriceSection extends StatelessWidget {
  const ProductPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("EGP 109.95", style: AppStyles.style14),
        SizedBox(width: 10),
        Text(
          "EGP 109.95",
          style: AppStyles.style12.copyWith(
            color: AppColors.discountColor,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
