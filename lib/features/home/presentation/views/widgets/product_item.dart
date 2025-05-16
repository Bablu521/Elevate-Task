import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_add_btn.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_price_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_favourite_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_image_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_review_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      // height: 306,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 2, color: AppColors.borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ProductImageSection(),
              ProductFavouriteSection()
            ],
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Text(
                  "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                  style: AppStyles.style14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                  style: AppStyles.style12,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                SizedBox(height: 8),
                ProductPriceSection(),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductReviewSection(),
                  ProductAddBtn()
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}