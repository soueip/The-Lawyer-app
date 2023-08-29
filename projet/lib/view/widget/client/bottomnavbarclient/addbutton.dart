import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../screen/client/newtickets.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double buttonXPosition = MediaQuery.of(context).size.width / 2 - 30;

    return Positioned(
      left: buttonXPosition,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewTickets(),
            ),
          );
        },
        child: Container(
          width: 55,
          height: 55,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.gold,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
