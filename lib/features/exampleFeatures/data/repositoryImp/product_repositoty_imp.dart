import 'package:budget/features/exampleFeatures/data/models/products_models.dart';
import 'package:budget/features/exampleFeatures/data/services/products_service.dart';
import 'package:budget/features/exampleFeatures/domain/entities/proudct_entity.dart';
import 'package:budget/features/exampleFeatures/domain/repository/products_repo.dart';


class ProductRepositoryImp implements ProductRepository {
  final ProductService _productService = ProductService();

  @override
  Future<ProductsEntityResponse> getProducts() async {
    final List<ProductsResponse> _productResponse =
        await _productService.getAllProducts();
    ProductsEntityResponse productsEntityResponse = ProductsEntityResponse(
      rating: RatingEntity(
        rate: _productResponse[0].rating!.rate,
        count: _productResponse[0].rating!.count,
      ),
    );
    return productsEntityResponse;
  }
}
