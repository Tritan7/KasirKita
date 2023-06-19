import 'dart:io';

class Product {
  final int id;
  final File image;
  final String productName;
  final String price;

  Product({
    required this.id,
    required this.image,
    required this.productName,
    required this.price,
  });

  factory Product.fromMap(Map<String, dynamic> data) {
    return Product(
      id: data["id"],
      image: data["image"],
      productName: data["productName"],
      price: data["price"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "image": image,
      "productName": productName,
      "price": price,
    };
  }
}
