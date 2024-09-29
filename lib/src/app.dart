// import 'package:flutter/material.dart';
// import 'package:flutter_clean_architecture/src/app.dart';
// import 'package:flutter_clean_architecture/src/shared/presentation/viewModel/theme_view_model.dart';
//
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'core/screenUtils/size_utils.dart';
// import 'core/theme/app_theme.dart';
//
// final navigatorKey = GlobalKey<NavigatorState>();
//
// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var darkMode = ref.watch(darkModeProvider);
//     return Sizer(
//         builder: (context, orientation, deviceType) => GestureDetector(
//           behavior: HitTestBehavior.opaque,
//           onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
//           child: MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme: appTheme, // Setting light theme
//             darkTheme: darkAppTheme, // Setting dark theme
//             navigatorKey: navigatorKey,
//             title: 'App Name',
//             themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
//             home: Container(),
//             // initialRoute: RoutersName.hotelDetailPage,
//             // onGenerateRoute: GenerateRouter.generateRoute,
//           ),
//         ));
//   }
// }
// lib/app.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/rotues/router.dart';
import 'features/Ecommerce/presentation/pages/product_detail_page.dart';
import 'features/Ecommerce/presentation/pages/product_listing_page.dart';





class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
