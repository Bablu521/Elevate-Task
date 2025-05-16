import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductFavouriteSection extends StatelessWidget {
  const ProductFavouriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 5,
      child: Container(
        alignment: Alignment.center,
        height: 35.h,
        width: 35.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.imgBgColor,
        ),
        child: Icon(
          FontAwesomeIcons.heart,
          color: AppColors.heartColor,
          size: 20,
        ),
      ),
    );
  }
}
