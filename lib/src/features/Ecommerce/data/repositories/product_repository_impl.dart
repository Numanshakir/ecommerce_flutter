// lib/data/repositories/product_repository_impl.dart
import 'package:dio/dio.dart';
import '../../domain/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository_impl.g.dart';

@riverpod
class ProductRepository extends _$ProductRepository {
  late Dio dio;
  // Initialize Dio in the constructor
  ProductRepository() : dio = Dio();
  // Initialize Dio inside the build method
  @override
  void build() {
 // You can configure Dio here as needed
  }

  // Fetch Products method
  Future<List<Product>> fetchProducts() async {
    final response = await dio.get('https://api.coindesk.com/v1/bpi/currentprice.json');
    if (response.statusCode == 200) {
      final List productsJson =[
        {"code":"EUR 1","symbol":"&euro 1;","rate":"58,733.955","description":"Euro","rate_float":58733.9551},
        {"code":"EUR 2","symbol":"&euro 2;","rate":"58,733.955","description":"Euro","rate_float":58733.9551},
        {"code":"EUR 3","symbol":"&euro 3;","rate":"58,733.955","description":"Euro","rate_float":58733.9551},
        {"code":"EUR 4","symbol":"&euro 4;","rate":"58,733.955","description":"Euro","rate_float":58733.9551},
      ];
      return productsJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
