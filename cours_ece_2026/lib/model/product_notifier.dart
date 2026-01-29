import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:formation_flutter/model/product.dart';

class ProductNotifier extends ChangeNotifier {
  Product? _product;

  ProductNotifier() {
    loadProduct();
  }

  Product? get product => _product;

  Future<void> loadProduct() async {
    final dio = Dio();

    final response = await dio.get(
      'https://api.formation-flutter.fr/v2/getProduct',
      queryParameters: {'barcode': '5000159484695'},
    );

    final Map<String, dynamic> data = response.data as Map<String, dynamic>;

    final Map<String, dynamic> json = data['response'] as Map<String, dynamic>;

    _product = Product(
      barcode: json['barcode'] as String,
      name: json['name'] as String?,
      picture: (json['pictures'] as Map<String, dynamic>)['product'] as String?,
      quantity: json['quantity'] as String?,
      brands: (json['brands'] as List?)?.cast<String>(),
      nutriScore: ProductNutriScore.E,
      novaScore: ProductNovaScore.group4,
      greenScore: ProductGreenScore.D,
    );

    notifyListeners();
  }
}
