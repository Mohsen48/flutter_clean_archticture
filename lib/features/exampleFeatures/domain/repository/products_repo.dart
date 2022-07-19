import '../entities/proudct_entity.dart';

abstract class ProductRepository {
  Future<ProductsEntityResponse> getProducts();
}
