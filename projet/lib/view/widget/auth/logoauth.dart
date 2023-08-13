import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projet/core/constant/imageasset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageAsset.logo,
      height: 80,
    );
  }
}
