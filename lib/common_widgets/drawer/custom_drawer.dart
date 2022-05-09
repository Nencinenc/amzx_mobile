import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../configuration/interceptors/enums.dart';
import '../../providers/account.dart';
import '../../routes/routes.dart';
import '../../shared/app_colors.dart';
import '../company_logo.dart';

part 'item_model.dart';
part 'list_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleLogout() async {
      await context.read<AccountProvider>().signOut();
      Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.loginPage, (route) => false);
    }

    final _drawerItems = [
      _ItemModel(onTap: () {}, title: 'Dashboard'),
      _ItemModel(onTap: () {}, title: 'Products Management'),
      _ItemModel(onTap: () {}, title: 'Campaigns'),
      _ItemModel(onTap: () {}, title: 'Amazon Configuration'),
      _ItemModel(onTap: () {}, title: 'Settings'),
      _ItemModel(onTap: handleLogout, title: 'Log out'),
    ];

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryBackground,
            ),
            child: CompanyLogo(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _drawerItems
                .map(
                  (e) => _DrawerListItem(
                    title: e.title,
                    onTap: e.onTap,
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
