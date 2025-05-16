import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/network/api_service.dart';
import 'package:elevate_task/features/home/data/model/product_model.dart';
import 'package:elevate_task/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<String, List<ProductModel>>> fetchAllProducts() async {
    try {
      var data = await apiService.getData();
      List<ProductModel> products = [];
      for (var item in data["items"]) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } on Exception catch (e) {
      return left(e.toString());
    }
  }
}
