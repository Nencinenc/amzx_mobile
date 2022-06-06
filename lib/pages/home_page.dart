import 'package:amzx/common_widgets/%20common/custom_appbar.dart';
import 'package:amzx/providers/main_page_provider.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common_widgets/ common/custom_bottom_navbar.dart';
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
    return Consumer<MainPageProvider>(
        builder: (context, MainPageProvider mainPageProvider, _) {
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
                child: Image.asset('icons/flags/png/de.png',
                    package: 'country_icons'),
              ),
            ),
          ),
        ),
        body: mainPageProvider.getSelectedScreen(),
        backgroundColor: heroBackground,
        bottomNavigationBar: const CustomBottomNavBar(),
      );
    });
  }
}
