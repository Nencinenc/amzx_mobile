import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';


class MoreMenuPage extends StatefulWidget {


  const MoreMenuPage({Key? key}) : super(key: key);

  @override
  State<MoreMenuPage> createState() => _MoreMenuPageState();
}

class _MoreMenuPageState extends State<MoreMenuPage> {
  final _scrollController = ScrollController();

  Color appBarColor = shadedHeroColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      // scrollDirection: Axis.horizontal,
      child: Center(
        child: Column(
          children: const [
            Text('test'),
          ],
        ),
      ),
    );
  }
}