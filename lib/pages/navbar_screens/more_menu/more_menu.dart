import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/pages/navbar_screens/more_menu/menu_list_item.dart';
import 'package:amzx/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../configuration/interceptors/enums.dart';
import '../../../providers/account.dart';
import '../../../shared/app_colors.dart';

part 'menu_item_model.dart';

class MoreMenuPage extends StatelessWidget {
  MoreMenuPage({Key? key}) : super(key: key);

  final items = [
    MenuItemModel(
        icon: FontAwesomeIcons.addressBook, text: 'Kur', onTap: () {}),
    MenuItemModel(
        icon: FontAwesomeIcons.addressBook, text: 'Kur', onTap: () {}),
    MenuItemModel(
        icon: FontAwesomeIcons.addressBook, text: 'Kur', onTap: () {}),
    MenuItemModel(
        icon: FontAwesomeIcons.addressBook, text: 'Kur', onTap: () {}),
  ];

  void handleLogout(BuildContext context) async {
    await context.read<AccountProvider>().signOut();
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteManager.loginPage,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 60.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryBackground,
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          size: 50,
                          color: primaryText,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: CustomText(
                      text: 'Adko Djudjeta',
                      textSize: TextSize.xxl,
                      textWeight: WeightSize.bold,
                    ),
                  ),
                  Column(
                    children: items
                        .map(
                          (e) => MenuListItem(
                            text: e.text,
                            icon: e.icon,
                            onTap: e.onTap,
                          ),
                        )
                        .toList(),
                  ),
                  const Spacer(),
                  MenuListItem(
                    text: 'Settings',
                    icon: FontAwesomeIcons.gear,
                    onTap: () {},
                  ),
                  MenuListItem(
                    text: 'Log out',
                    icon: FontAwesomeIcons.arrowRightFromBracket,
                    onTap: () => handleLogout(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
