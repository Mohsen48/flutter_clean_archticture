import 'package:budget/baseModels/base_bussniss.dart';
import 'package:budget/features/exampleFeatures/domain/repository/products_repo.dart';
import 'package:get/get.dart';

import '../entities/proudct_entity.dart';

class ProductBusiness extends BaseBussniss {
  final productRepository = Get.find<ProductRepository>();

  Future<ProductsEntityResponse> getProducts() async {
    return await productRepository.getProducts();
  }
}
