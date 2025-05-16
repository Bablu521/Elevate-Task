import 'package:elevate_task/core/theming/app_styles.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_cubit.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_state.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return ProductGridView(products: state.products);
        } else if (state is HomeFailure) {
          return Center(
            child: Text(
              "An Error Occured : ${state.errorMsg}",
              style: AppStyles.style14.copyWith(fontSize: 18),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
