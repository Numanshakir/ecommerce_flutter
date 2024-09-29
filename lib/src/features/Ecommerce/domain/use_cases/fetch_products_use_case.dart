// lib/domain/use_cases/fetch_products_use_case.dart

import '../../data/repositories/product_repository_impl.dart';
import '../models/product.dart';

class FetchProductsUseCase {
  final ProductRepository productRepository;

  FetchProductsUseCase(this.productRepository);

  Future<List<Product>> execute() {
    return productRepository.fetchProducts();
  }
}
