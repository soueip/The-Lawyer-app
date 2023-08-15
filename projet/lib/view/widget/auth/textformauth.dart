import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

class TextFormAuth extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final String text;
  final TextEditingController mycontroller;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final String? Function(String?)? valid;

  const TextFormAuth({
    Key? key,
    this.obscureText,
    this.onTapIcon,
    required this.hinttext,
    required this.iconData,
    required this.mycontroller,
    required this.text,
    this.valid,
    required this.isNumber,
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
            keyboardType: isNumber
                ? const TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
            validator: valid,
            controller: mycontroller,
            obscureText:
                obscureText == null || obscureText == false ? false : true,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              suffixIcon: InkWell(
                onTap: onTapIcon,
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColor.bleu,
                    BlendMode.srcIn,
                  ),
                  child: Icon(iconData),
                ),
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
