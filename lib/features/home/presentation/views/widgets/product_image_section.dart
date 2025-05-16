import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
