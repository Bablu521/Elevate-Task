import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle style14 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );
  static TextStyle style12 = TextStyle(
    fontFamily: "Poppins",
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );
}
