import 'package:flutter/material.dart';

import '../../../core/constant/color.dart'; // Adjust the path if needed
import '../../screen/client/newtickets.dart'; // Adjust the path if needed

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonXPosition = MediaQuery.of(context).size.width / 2 - 30;

    return Positioned(
      bottom: 35,
      left: buttonXPosition,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewTickets(),
            ),
          );
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.gold,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
