import 'package:elevate_task/features/home/data/model/product_model.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<ProductModel> products;

  HomeSuccess({required this.products});
}

final class HomeFailure extends HomeState {
  final String errorMsg;

  HomeFailure({required this.errorMsg});
}
