import 'package:amzx/pages/navbar_screens/more_menu/more_menu.dart';
import 'package:amzx/providers/products_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration/locator.dart';
import '../pages/navbar_screens/campaigns/campaigns_page.dart';
import '../pages/navbar_screens/home/home.dart';
import '../pages/navbar_screens/products/products.dart';
import 'camapings_page_provider.dart';

class MainPageProvider extends ChangeNotifier {
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
      return ChangeNotifierProvider.value(
        value: getIt<ProductsPageProvider>(),
        child: const ProductsPage(),
      );
    }
    if (_selectedIndex == 2) {
      return ChangeNotifierProvider.value(
        value: getIt<CampaignsPageProvider>(),
        child: const CampaignsPage(),
      );
    }
    if (_selectedIndex == 3) {
      return MoreMenuPage();
    }
    return const HomeScreen();
  }
}
