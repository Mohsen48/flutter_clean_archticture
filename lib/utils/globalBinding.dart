import 'package:budget/features/exampleFeatures/presentation/controller/product_controller.dart';
import 'package:get/get.dart';

import '../features/exampleFeatures/data/repositoryImp/product_repositoty_imp.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductsController>(() => ProductsController());
    Get.lazyPut<ProductRepositoryImp>(() => ProductRepositoryImp());
  }
}
