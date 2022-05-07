import 'package:flutter/material.dart';

import '../box_text.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const GradientButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.8, 0.0,),
            colors: [
              Color(0xff21d397),
              Color(0xff7450fe)
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18.0,
          ),
          child: Center(
            child: CaptionText(text: text),
          ),
        ),
      ),
    );
  }
}

// Container(
// decoration: const BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end:
// Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
// colors: <Color>[
// Color(0xffee0000),
// Color(0xffeeee00)
// ], // red to yellow
// tileMode: TileMode.repeated, // repeats the gradient over the canvas
// ),
// ),
// )
