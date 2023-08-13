import 'package:flutter/material.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:projet/view/screen/auth/forgetpass.dart';
import 'package:projet/view/screen/auth/login.dart';
import 'package:projet/view/screen/auth/resetpassword.dart';
import 'package:projet/view/screen/auth/verifycode.dart';
import 'package:projet/view/screen/onboarding.dart';
import 'package:projet/view/screen/auth/signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetpassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
};
