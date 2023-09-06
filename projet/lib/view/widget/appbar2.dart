import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/core/constant/color.dart';

class AppBar2Widget extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const AppBar2Widget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true, // Center the title horizontally
      leading: Container(
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color.fromARGB(255, 211, 242, 253),
            width: 1,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.chevronLeft,
              color: AppColor.bleu,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          fontFamily: "RedHatDisplay",
          color: AppColor.bleu,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
