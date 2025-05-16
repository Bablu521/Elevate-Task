import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductFavouriteSection extends StatefulWidget {
  const ProductFavouriteSection({super.key});

  @override
  State<ProductFavouriteSection> createState() =>
      _ProductFavouriteSectionState();
}

class _ProductFavouriteSectionState extends State<ProductFavouriteSection> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 5,
      child: InkWell(
        onTap: () {
          setState(() {
            isFavourite = !isFavourite;
          });
        },
        child: Container(
          alignment: Alignment.center,
          height: 35.h,
          width: 35.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.favouriteBgColor.withOpacity(0.7),
          ),
          child: Icon(
            isFavourite ? Icons.favorite : Icons.favorite_outline,
            color: AppColors.favouriteColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
