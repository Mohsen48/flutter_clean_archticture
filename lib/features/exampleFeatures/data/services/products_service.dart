import 'package:budget/utils/urls.dart';
import 'package:get/get.dart';

import '../../../../globalServices/apiServices/networkService/abstract_network_service.dart';
import '../models/products_models.dart';
import 'abstractProductsService.dart';

class ProductService extends GetxService implements AbstractProductsService {
  final networkService = Get.find<AbstractNetworkService>();

  @override
  Future<List<ProductsResponse>> getAllProducts() async {
    String url = Urls.baseUrl;
    final response = await networkService.get(url);
    if (response?.statusCode == 200) {
      final result = response?.data;
      Iterable list = result;
      return list.map((e) => ProductsResponse.fromJson(e)).toList();
    } else {
      throw Exception("failed to get products");
    }
  }

  // Future<List<ProductsResponse>> getAllProducts() async {
  //   return await getCallService(
  //     Urls.baseUrl,
  //     productsResponseFromJson,
  //   );
  // }
}
