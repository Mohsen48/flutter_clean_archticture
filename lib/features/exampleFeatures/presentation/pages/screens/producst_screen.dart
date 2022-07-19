import 'package:budget/features/exampleFeatures/presentation/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({Key? key}) : super(key: key);
  final ProductsController _productsController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Center(
                child: _productsController.networkServiceLoading.value
                    ? const CircularProgressIndicator()
                    : Text(
                        _productsController.productEntity.rating!.rate
                            .toString(),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
