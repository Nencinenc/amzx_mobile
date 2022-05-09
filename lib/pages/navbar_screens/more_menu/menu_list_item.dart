import 'package:amzx/configuration/interceptors/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common_widgets/typography/custom_text.dart';
import '../../../shared/app_colors.dart';

class MenuListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;

  const MenuListItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () => onTap(),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: FaIcon(
                icon,
                color: primaryText,
                size: 24,
              ),
            ),
            CustomText(
              text: text,
              textSize: TextSize.l,
            ),
          ],
        ),
      ),
    );
  }
}
