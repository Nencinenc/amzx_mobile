import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EyeIcon extends StatelessWidget {
  final bool hidePassword;
  final void Function() onPressed;

  const EyeIcon({
    Key? key,
    required this.hidePassword,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        hidePassword ? Icons.visibility : Icons.visibility_off,
      ),
      color: Colors.white,
      onPressed: onPressed,
    );
  }
}
