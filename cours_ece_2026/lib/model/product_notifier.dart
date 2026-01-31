import 'package:dio/dio.dart';
import 'dart:convert';
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
      options: Options(responseType: ResponseType.plain),
    );

    final Map<String, dynamic> decoded =
        jsonDecode(response.data as String) as Map<String, dynamic>;

    final Map<String, dynamic> json =
        decoded['response'] as Map<String, dynamic>;

    _product = Product.fromJSON(json);

    notifyListeners();
  }
}
