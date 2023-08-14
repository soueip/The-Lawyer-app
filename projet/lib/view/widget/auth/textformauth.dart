import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

class TextFormAuth extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final String text;
  final TextEditingController mycontroller;

  const TextFormAuth({
    Key? key,
    required this.hinttext,
    required this.iconData,
    required this.mycontroller,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: AppColor.bleu,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextFormField(
            controller: mycontroller,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              suffixIcon: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  AppColor.bleu,
                  BlendMode.srcIn,
                ),
                child: Icon(iconData),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColor.bleu),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
