import 'package:elevate_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ProductAddBtn extends StatelessWidget {
  const ProductAddBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.plusBtnColoe,
      ),
      child: Icon(Icons.add, color: Colors.white, size: 28),
    );
  }
}
