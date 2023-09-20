import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/core/constant/color.dart';

Widget buildPriorityCard({
  required String priority,
  required String selectedPriority,
  required Function(String) onPressed,
}) {
  IconData iconData;
  Color iconColor;
  Color circleColor;

  if (priority == "High") {
    iconData = FontAwesomeIcons.arrowUp;
  } else if (priority == "Medium") {
    iconData = FontAwesomeIcons.arrowRight;
  } else {
    iconData = FontAwesomeIcons.arrowDown;
  }

  iconColor = selectedPriority == priority ? AppColor.gold : AppColor.marron;
  circleColor = selectedPriority == priority ? AppColor.marron : AppColor.goldy;

  return GestureDetector(
    onTap: () => onPressed(priority),
    child: Card(
      elevation: selectedPriority == priority ? 4.0 : 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(
          color: selectedPriority == priority ? AppColor.bleu : AppColor.gris,
          width: 1.0,
        ),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          widthFactor: 2,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: circleColor,
                ),
                padding: EdgeInsets.all(12.0),
                child: FaIcon(
                  iconData,
                  size: 24,
                  color: iconColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                priority,
                style: TextStyle(
                  fontWeight: selectedPriority == priority
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
