import 'package:flutter/material.dart';
import 'package:projet/view/widget/auth/textcolored.dart';

class Coloredtext extends StatelessWidget {
  final String leftText;
  final String rightText;
  final VoidCallback? rightTextOnTap;

  const Coloredtext({
    super.key,
    required this.leftText,
    required this.rightText,
    this.rightTextOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Added this line
        children: [
          Text(
            leftText,
            style: Theme.of(context).textTheme.headline4,
          ),
          Textcolored(
            text1: "",
            text2: rightText,
            onTap: rightTextOnTap,
          ),
        ],
      ),
    );
  }
}
