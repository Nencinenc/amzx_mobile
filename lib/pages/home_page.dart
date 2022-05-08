import 'package:amzx/common_widgets/custom_appbar.dart';
import 'package:amzx/common_widgets/custom_card.dart';
import 'package:amzx/models/ui/card.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../common_widgets/dashboard/acos_chart.dart';
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

  final mainInfoCards = [
    CustomCardModel(title: '4954 USD', subtitle: 'Sales today'),
    CustomCardModel(title: '30', subtitle: 'Units'),
    CustomCardModel(title: '50324 USD', subtitle: 'Current Ads revenue'),
    CustomCardModel(title: '30', subtitle: 'Units revenue'),
    CustomCardModel(title: '30', subtitle: 'Units revenue'),
    CustomCardModel(title: '30', subtitle: 'Units revenue'),
  ];

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
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      backgroundColor: heroBackground,
      body: SingleChildScrollView(
        controller: _scrollController,
        // scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 6.0,
                ),
                child: Row(
                  children: mainInfoCards
                      .map((e) => CustomCard(
                            title: e.title,
                            subtitle: e.subtitle,
                          ))
                      .toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SfCartesianChart(
                  // Initialize category axis
                  primaryXAxis: CategoryAxis(),
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                        // Bind data source
                        dataSource: <SalesData>[
                          SalesData('Jan', 35),
                          SalesData('Feb', 28),
                          SalesData('Mar', 34),
                          SalesData('Apr', 32),
                          SalesData('May', 40)
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
