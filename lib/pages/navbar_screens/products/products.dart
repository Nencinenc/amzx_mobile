import 'package:amzx/providers/products_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/typography/custom_text.dart';
import '../../../configuration/interceptors/enums.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<ProductsPageProvider>().accountProducts.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0),
          child: CustomText(
            text:
                "You currently don't have any registered products. If you want to add go to the 'Add products' page",
            textColor: Colors.white,
            textAlign: TextAlign.center,
            textSize: TextSize.l,
          ),
        ),
      );
    }

    return Consumer(
        builder: (context, ProductsPageProvider enterHoursProvider, _) {
      return ListView.builder(
        itemCount: enterHoursProvider.accountProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: CustomText(
              text: enterHoursProvider.accountProducts[index].productName,
            ),
          );
        },
      );
    });
  }
}
