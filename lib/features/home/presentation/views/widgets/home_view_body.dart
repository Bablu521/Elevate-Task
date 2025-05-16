import 'package:elevate_task/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
       // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    // Total horizontal padding and spacing between items
    const horizontalPadding = 16 * 2; // from GridView padding
    const crossAxisSpacing = 16;
    const crossAxisCount = 2;

    // Calculate total spacing between grid columns
    final totalSpacing = (crossAxisCount - 1) * crossAxisSpacing;

    // Calculate actual item width
    final itemWidth =
        (screenWidth - horizontalPadding - totalSpacing) / crossAxisCount;

    // Your fixed card height
    const itemHeight = 310;

    // Calculate aspect ratio
    final aspectRatio = itemWidth / itemHeight;

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: aspectRatio
      ),
      itemBuilder: (context , index) {
        return ProductItem();
      },
      itemCount:20,
    );
  }
}
