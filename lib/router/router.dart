import 'package:budget/features/exampleFeatures/presentation/pages/screens/producst_screen.dart';
import 'package:budget/router/routes_constants.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../utils/globalBinding.dart';

class AppRouter {
  static final routes = [
    /// Products Screen Route
    GetPage(
      name: RoutesConstants.productsScreen,
      page: () =>  ProductsScreen(),
      transition: Transition.fade,
      binding: GlobalBindings(),
    ),
  ];
}
