import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_cubit.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_state.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    const itemHeight = 306;

    // Calculate aspect ratio
    final aspectRatio = itemWidth / itemHeight;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: aspectRatio,
            ),
            itemBuilder: (context, index) {
              return ProductItem(product: state.products[index],);
            },
            itemCount: state.products.length,
          );
        } else if (state is HomeFailure) {
          return Center(
            child: Text(
              "An Error Occured : ${state.errorMsg}",
              style: AppStyles.style14.copyWith(fontSize: 18),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
