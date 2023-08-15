import 'package:flutter/material.dart';
import 'package:projet/core/constant/imageasset.dart';

class logoutLogo extends StatelessWidget {
  const logoutLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logout,
      height: 80,
    );
  }
}
