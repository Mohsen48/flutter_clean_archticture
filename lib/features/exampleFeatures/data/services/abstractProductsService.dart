import 'package:budget/features/exampleFeatures/data/models/products_models.dart';

abstract class AbstractProductsService {
  Future<List<ProductsResponse>> getAllProducts();
}
