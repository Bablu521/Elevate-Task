import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/data/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductPriceSection extends StatelessWidget {
  final ProductModel product;
  const ProductPriceSection({super.key , required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("EGP ${product.price}", style: AppStyles.style14),
        const SizedBox(width: 10),
        Text(
          "EGP ${(product.price!*1.1).toStringAsFixed(1)}",
          style: AppStyles.style12.copyWith(
            color: AppColors.discountColor,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
