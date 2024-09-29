
import 'package:go_router/go_router.dart';

import '../../features/Ecommerce/domain/models/product.dart';
import '../../features/Ecommerce/presentation/pages/product_detail_page.dart';
import '../../features/Ecommerce/presentation/pages/product_listing_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ProductListPage(),
    ),
    GoRoute(
      path: '/product',
      builder: (context, state) {
        final product = state.extra as Product;
        return ProductDetailPage(product: product);
      },
    ),
  ],
);