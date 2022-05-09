import 'package:amzx/common_widgets/custom_appbar.dart';
import 'package:amzx/models/ui/card.dart';
import 'package:amzx/providers/account.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:country_icons/country_icons.dart';

import '../common_widgets/custom_bottom_navbar.dart';
import '../common_widgets/drawer/custom_drawer.dart';
import '../configuration/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  Color appBarColor = shadedHeroColor;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset <= scrollOffset) {
        setState(() {
          appBarColor = shadedHeroColor;
        });
      } else {
        appBarColor = primaryBackground;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: appBarColor,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('icons/flags/png/de.png', package: 'country_icons'),
            ),
          ),
        ),
      ),
      body: context.watch<AccountProvider>().getSelectedScreen(),
      backgroundColor: heroBackground,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
