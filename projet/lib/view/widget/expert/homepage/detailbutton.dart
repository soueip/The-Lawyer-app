import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

class DetailButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double buttonWidth;
  const DetailButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonWidth = 300.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Center(
        // Center the button within its parent container
        child: SizedBox(
          width: buttonWidth,
          child: MaterialButton(
            onPressed: onPressed,
            color: AppColor.lightwhite,
            padding: const EdgeInsets.symmetric(vertical: 13),
            textColor: AppColor.bleu,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: AppColor.bleu),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "RedHatDisplay",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
