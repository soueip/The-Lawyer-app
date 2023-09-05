import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/constant/imageasset.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const AppBarWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Align items to start and end
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.goldy,
            ),
            child: Image.asset(
              AppImageAsset.logo,
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Center(
              child: Text(
                titleText,
                style: const TextStyle(
                  color: AppColor.bleu,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            // Container for notification icon
            margin: const EdgeInsets.only(right: 12),
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
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
