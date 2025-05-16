import 'package:elevate_task/features/home/data/repo/home_repo.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeInitial());

  getAllProducts() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchAllProducts();
    result.fold(
      (error) {
        emit(HomeFailure(errorMsg: error));
      },
      (products) {
        emit(HomeSuccess(products: products));
      },
    );
  }
}
