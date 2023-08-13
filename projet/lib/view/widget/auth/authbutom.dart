import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

class AuthButom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AuthButom({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.bleu,
        padding: const EdgeInsets.symmetric(vertical: 13),
        textColor: AppColor.lightwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text),
      ),
    );
  }
}
