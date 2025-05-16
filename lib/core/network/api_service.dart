import 'dart:developer';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  Future<dynamic> getData() async {
    try {
      final String baseUrl = "https://fakestoreapi.com/";
      final String endPoint = "products";
      Response response = await dio.get("$baseUrl$endPoint");
      return response.data;
    } catch (e) {
      log(e.toString());
      throw Exception("there is an error .. try later");
    }
  }
}
