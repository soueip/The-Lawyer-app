import 'package:get/get.dart';
import 'package:projet/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final Color backgroundColor;
  final Color textColor;
  final void Function()? onPressed;

  const CustomButtonLang({
    Key? key,
    required this.textbutton,
    required this.backgroundColor,
    required this.textColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: const EdgeInsets.all(10),
      child: MaterialButton(
        color: backgroundColor,
        textColor: textColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(color: AppColor.gold),
        ),
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
