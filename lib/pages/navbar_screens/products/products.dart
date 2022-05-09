import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';


class ProductsPage extends StatefulWidget {


  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final _scrollController = ScrollController();

  Color appBarColor = shadedHeroColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: _scrollController,
        // scrollDirection: Axis.horizontal,
        child: const Text('test'),
      );
  }
}