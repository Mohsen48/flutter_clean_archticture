import 'package:budget/router/router.dart';
import 'package:budget/router/routes_constants.dart';
import 'package:budget/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesConstants.productsScreen,
      getPages: AppRouter.routes,
    );
  }
}
