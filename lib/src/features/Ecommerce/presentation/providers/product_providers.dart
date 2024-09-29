// lib/presentation/providers/product_providers.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/product.dart';
import '../../domain/use_cases/fetch_products_use_case.dart';
import '../../data/repositories/product_repository_impl.dart';

part 'product_providers.g.dart';

// Provide the ProductRepository
@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  return ProductRepository(); // Return an instance of ProductRepository
}

// Provide the FetchProductsUseCase
@riverpod
FetchProductsUseCase fetchProductsUseCase(FetchProductsUseCaseRef ref) {
  final productRepository = ref.watch(productRepositoryProvider); // Fetch the repository
  return FetchProductsUseCase(productRepository);
}

// Provide a list of products using FetchProductsUseCase
@riverpod
Future<List<Product>> fetchProducts(FetchProductsRef ref) {
  final fetchProductsUseCase = ref.watch(fetchProductsUseCaseProvider); // Use the Use Case
  return fetchProductsUseCase.execute();
}
