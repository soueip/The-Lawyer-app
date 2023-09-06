import 'package:flutter/material.dart'; // Import the correct material package

import '../../../../core/constant/color.dart';

class StatusWidget extends StatelessWidget {
  final String statu;

  const StatusWidget({Key? key, required this.statu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    Color textColor;

    if (statu == 'clôturer') {
      bgColor = Colors.green.shade50;
      textColor = Colors.green;
    } else {
      bgColor = AppColor
          .redy; // You need to define AppColor.redy in your color constants
      textColor = AppColor.red;
    }

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            statu,
            style: TextStyle(
              color: textColor,
              fontFamily: "RedHatDisplay",
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
