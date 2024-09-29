// lib/presentation/pages/product_list_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/core/rotues/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/product_providers.dart';
import 'package:go_router/go_router.dart';
class ProductListPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(fetchProductsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: productsAsync.when(
        data: (products) => ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return InkWell(
              onTap: (){
                context.go('/product',extra: product );
              },
              child
                  : ListTile(
                title: Text(product.code),
                subtitle: Text('\$${product.symbol}'),
              ),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
