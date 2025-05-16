import 'package:dartz/dartz.dart';
import 'package:elevate_task/features/home/data/model/product_model.dart';

abstract class HomeRepo {
  Future<Either<String, List<ProductModel>>> fetchAllProducts();
}
