import 'package:amzx/providers/main_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../shared/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  final TextStyle optionStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      context.read<MainPageProvider>().handleIndexChange = index;
    }

    return BottomNavigationBar(
      backgroundColor: primaryBackground,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: FaIcon(FontAwesomeIcons.house),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: FaIcon(FontAwesomeIcons.bookOpen),
          ),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: FaIcon(FontAwesomeIcons.tableList),
          ),
          label: 'Campaigns',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 2.0),
            child: FaIcon(FontAwesomeIcons.ellipsisVertical),
          ),
          label: 'More',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: context.watch<MainPageProvider>().selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      enableFeedback: true,
      iconSize: 16,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      showUnselectedLabels: true,
      onTap: onItemTapped,
    );
  }
}
