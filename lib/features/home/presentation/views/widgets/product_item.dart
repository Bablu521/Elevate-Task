import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Container(
                  color: Colors.white,
                  height: 150.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Image.network(
                      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,
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
              ),
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
                Row(
                  children: [
                    Text("EGP 109.95", style: AppStyles.style14),
                    SizedBox(width: 15),
                    Text(
                      "EGP 109.95",
                      style: AppStyles.style12.copyWith(
                        color: AppColors.discountColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Review", style: AppStyles.style12),
                        SizedBox(width: 3),
                        Text("(4.2)", style: AppStyles.style12),
                        SizedBox(width: 3),
                        Icon(Icons.star, color: AppColors.starColor, size: 18),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.plusBtnColoe,
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 28),
                    ),
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