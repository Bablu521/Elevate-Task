import 'package:elevate_task/features/home/data/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageSection extends StatelessWidget {
  final ProductModel product;
  const ProductImageSection({super.key , required this.product});

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
            product.image!,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
