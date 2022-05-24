import 'package:flutter/cupertino.dart';

import '../models/ui/product.dart';

class ProductsPageProvider extends ChangeNotifier {
  final List<Product> _accountProducts = [];
  List<Product> get accountProducts => _accountProducts;

  set addProducts(List<Product> products) {
    for (final product in products) {
      if (!_accountProducts.contains(product)) {
        _accountProducts.add(product);
      }
    }
    notifyListeners();
  }

  set removeProduct(Product value) {
    _accountProducts.removeWhere((product) => product == value);
    notifyListeners();
  }
}
