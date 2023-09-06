import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

Widget buildButton(
    int selectedButtonIndex, int index, String label, Function(int) onPressed) {
  final isSelected = selectedButtonIndex == index;
  final buttonColor = isSelected ? AppColor.lightwhite : AppColor.gris;

  return Container(
    decoration: const BoxDecoration(
      color: AppColor.gris,
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: MaterialButton(
      onPressed: () {
        onPressed(index); // Call the onPressed callback
      },
      color: buttonColor,
      textColor: isSelected ? AppColor.bleu : AppColor.bleu,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(label),
    ),
  );
}
