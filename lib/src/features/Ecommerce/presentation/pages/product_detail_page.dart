// lib/presentation/pages/product_detail_page.dart
import 'package:flutter/material.dart';

import '../../domain/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    // Fetch product by ID using riverpod providers, or pass product from List page
    return Scaffold(
      appBar: AppBar(title: Text('Product Details')),
      body: Center(child: Text('Details for product: ${product.symbol}  ${product.code}  ${product.description}')),
    );
  }
}
