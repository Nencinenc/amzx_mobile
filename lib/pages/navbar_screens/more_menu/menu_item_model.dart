part of 'more_menu.dart';

class MenuItemModel {
  final String text;
  final IconData icon;
  final void Function() onTap;

  MenuItemModel({
    required this.text,
    required this.icon,
    required this.onTap,
  });
}
