import 'dart:convert';

List<ProductsResponse> productsResponseFromJson(String str) =>
    List<ProductsResponse>.from(
        json.decode(str).map((x) => ProductsResponse.fromJson(x)));

class ProductsResponse {
  ProductsResponse({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  int? id;
  String? title;
  dynamic price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  ProductsResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
}

class Rating {
  Rating({
    this.rate,
    this.count,
  });

  dynamic rate;
  dynamic count;
  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }
}
