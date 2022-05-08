part of 'custom_drawer.dart';

class _ItemModel {
  final String title;
  final void Function() onTap;

  _ItemModel({
    required this.title,
    required this.onTap,
  });
}
