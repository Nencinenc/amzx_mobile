import 'package:amzx/common_widgets/%20common/custom_card.dart';
import 'package:amzx/models/ui/card.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../common_widgets/dashboard/acos_chart.dart';
import '../../../configuration/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
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
    return SingleChildScrollView(
      controller: _scrollController,
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
    );
  }
}
