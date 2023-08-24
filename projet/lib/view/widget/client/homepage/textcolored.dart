import 'package:flutter/material.dart';
import 'package:projet/view/widget/auth/textcolored.dart';

class Coloredtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Text(
            "Buy New Offer",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            width: 160,
          ),
          Textcolored(
            text1: "",
            text2: "See All",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
