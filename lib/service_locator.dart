import 'package:budget/features/exampleFeatures/data/repositoryImp/product_repositoty_imp.dart';
import 'package:budget/features/exampleFeatures/domain/bussniss/product_business.dart';
import 'package:budget/features/exampleFeatures/domain/repository/products_repo.dart';
import 'package:get/get.dart';

import 'features/exampleFeatures/data/services/abstractProductsService.dart';
import 'features/exampleFeatures/data/services/products_service.dart';
import 'globalServices/apiServices/networkService/abstract_network_service.dart';
import 'globalServices/apiServices/networkService/network_service.dart';

void setupLocator() {
  /// App Services
  Get.lazyPut<ProductRepository>(() => ProductRepositoryImp());

  /// Api Services
  Get.lazyPut<AbstractNetworkService>(() => NetworkService());
  Get.lazyPut<AbstractProductsService>(() => ProductService());

  /// Business Services
  Get.lazyPut(() => ProductBusiness());
}
