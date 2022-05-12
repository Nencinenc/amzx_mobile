import 'package:amzx/models/network/product.dart';
import 'package:amzx/pages/navbar_screens/more_menu/more_menu.dart';
import 'package:flutter/material.dart';

import '../configuration/services/api.dart';
import '../pages/navbar_screens/campaigns/campaigns_page.dart';
import '../pages/navbar_screens/home/home.dart';
import '../pages/navbar_screens/products/products.dart';
import '../repositories/secure_storage_repo.dart';

class AccountProvider extends ChangeNotifier {
  final API apiService;
  final SecureStorageRepo storageService;

  AccountProvider({
    required this.apiService,
    required this.storageService,
  });

  Future login(String email, String password) async {
    final data = await apiService.login(
      email,
      password,
    );
    await storageService.addToken(data.token);
  }

  Future<bool> isLogged() async {
    final token = await storageService.getToken();
    return token != null;
  }

  Future signOut() async {
    await storageService.deleteAll();
  }

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  set handleIndexChange(int value) {
    _selectedIndex = value;
    notifyListeners();
  }

  Widget getSelectedScreen() {
    if (_selectedIndex == 0) {
      return const HomeScreen();
    }
    if (_selectedIndex == 1) {
      return const ProductsPage();
    }
    if (_selectedIndex == 2) {
      return CampaignsPage();
    }
    if (_selectedIndex == 3) {
      return MoreMenuPage();
    }
    return const HomeScreen();
  }

  final List<Product> _accountProducts = [];
  List<Product> get accountProducts => _accountProducts;

  set addProduct(Product value) {
    _accountProducts.add(value);
    notifyListeners();
  }

  set removeProduct(Product value) {
    _accountProducts.removeWhere((product) => product == value);
    notifyListeners();
  }
}
