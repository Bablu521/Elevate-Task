import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductAddBtn extends StatelessWidget {
  const ProductAddBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // increase product count in cart
      },
      child: Container(
        alignment: Alignment.center,
        height: 35.h,
        width: 35.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.plusBtnColoe,
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
