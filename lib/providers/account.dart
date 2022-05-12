import 'package:amzx/models/ui/product.dart';
import 'package:amzx/pages/navbar_screens/more_menu/more_menu.dart';
import 'package:flutter/material.dart';

import '../configuration/services/api.dart';
import '../pages/navbar_screens/campaigns/campaigns_page.dart';
import '../pages/navbar_screens/home/home.dart';
import '../pages/navbar_screens/products/products.dart';
import '../repositories/secure_storage_repo.dart';
import '../repositories/user.dart';
import '../routes/routes.dart';

class AccountProvider extends ChangeNotifier {
  final API apiService;
  final SecureStorageRepo storageService;
  final UserRepository userRepository;

  AccountProvider({
    required this.apiService,
    required this.storageService,
    required this.userRepository,
  });

  Future login(
    String email,
    String password,
    BuildContext context,
  ) async {
    await userRepository.handleAddToken(
      email,
      password,
    );
    final isSignedIn = await isLogged();
    if (isSignedIn) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        RouteManager.homePage,
        (route) => false,
      );
    }
  }

  Future<bool> isLogged() async {
    final token = await storageService.getToken();
    return token != null;
  }

  Future signOut(BuildContext context) async {
    await storageService.deleteAll();
    _selectedIndex = 0;
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteManager.landingPage,
      (route) => false,
    );
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
