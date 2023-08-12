import 'package:flutter/material.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:projet/view/screen/auth/login.dart';
import 'package:projet/view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding()
};
