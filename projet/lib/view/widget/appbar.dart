import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/constant/imageasset.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.lightwhite,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset(
            AppImageAsset.logo,
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 8),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColor.gris,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: AppColor.bleu,
                ),
                onPressed: () {
                  // Handle notification button press
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
