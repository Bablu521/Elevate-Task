import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/data/model/product_model.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_add_btn.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_price_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_favourite_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_image_section.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_review_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        // width: 200,
        // height: 306,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(width: 2, color: AppColors.borderColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [ProductImageSection(product: product,), ProductFavouriteSection(),]),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    product.title!,
                    style: AppStyles.style14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.description!,
                    style: AppStyles.style12,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                  const SizedBox(height: 8),
                  ProductPriceSection(product: product,),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ProductReviewSection(product: product,), ProductAddBtn()],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
