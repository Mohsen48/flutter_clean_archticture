// response From Products

import 'package:budget/baseModels/base_entity.dart';

class ProductsEntityResponse extends BaseEntity {
  RatingEntity? rating;

  ProductsEntityResponse({this.rating});
}

class RatingEntity {
  dynamic rate;
  dynamic count;

  RatingEntity({this.rate, this.count});
}
