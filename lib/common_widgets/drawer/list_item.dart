part of 'custom_drawer.dart';

class _DrawerListItem extends StatelessWidget {
  String title;
  void Function() onTap;

  _DrawerListItem({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 16.0,
        ),
        child: CustomText(
          text: title,
          textSize: TextSize.m,
          textColor: blackColor,
        ),
      ),
    );
  }
}
