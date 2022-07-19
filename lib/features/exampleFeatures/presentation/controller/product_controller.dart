import 'package:budget/features/exampleFeatures/domain/bussniss/product_business.dart';
import 'package:budget/features/exampleFeatures/domain/entities/proudct_entity.dart';
import 'package:get/get.dart';

import '../../../../core/getxBaseController.dart/base_controller.dart';


class ProductsController extends BaseController {
  ProductBusiness? _productBusiness;
  @override
  void onInit() async {
    super.onInit();
    _productBusiness = Get.find<ProductBusiness>();
    await getProductEntity();
  }

  ProductsEntityResponse _productEntity = ProductsEntityResponse();
  ProductsEntityResponse get productEntity => _productEntity;

  getProductEntity() async {
    networkServiceLoading(true);
    _productEntity = await _productBusiness!.getProducts();
    networkServiceLoading(false);
  }
}
