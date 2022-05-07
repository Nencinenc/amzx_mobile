import 'package:amzx/common_widgets/box_text.dart';
import 'package:amzx/common_widgets/custom_appbar.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';

import '../common_widgets/company_logo.dart';
import '../common_widgets/dashboard/acos_chart.dart';
import '../configuration/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  Color appBarColor = Colors.transparent;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset <= scrollOffset) {
        setState(() {
          appBarColor = Colors.transparent;
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
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: heroBackground,
              ),
              child: CompanyLogo(),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Products Management'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Campaigns'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Amazon Configuration'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Log out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: heroBackground,
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    width: 130.0,
                    height: 60.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: const [
                            BoxAmount(text: '4954 USD'),
                            BoxTitle(text: 'Sales today so far'),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                    width: 130.0,
                    height: 60.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: const [
                            BoxAmount(text: '30'),
                            BoxTitle(text: 'Units today so far'),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                    width: 130.0,
                    height: 60.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: const [
                            BoxAmount(text: '50324 USD'),
                            BoxTitle(text: 'Current Ads revenue'),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                    width: 130.0,
                    height: 60.0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: const [
                            BoxAmount(text: '30'),
                            BoxTitle(text: 'Units today so far'),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
