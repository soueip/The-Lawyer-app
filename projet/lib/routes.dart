import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projet/core/constant/routes.dart';
import 'package:projet/core/middleware/mymiddleware.dart';

import 'package:projet/view/screen/auth/forget%20password/forgetpass.dart';
import 'package:projet/view/screen/auth/forget%20password/resetpassword.dart';
import 'package:projet/view/screen/auth/forget%20password/successpage.dart';

import 'package:projet/view/screen/auth/login.dart';

import 'package:projet/view/screen/auth/forget%20password/verifycode.dart';
import 'package:projet/view/screen/auth/successsignup.dart';
import 'package:projet/view/screen/auth/verifsignup.dart';
import 'package:projet/view/screen/homepage.dart';
import 'package:projet/view/screen/language.dart';
import 'package:projet/view/screen/onboarding.dart';
import 'package:projet/view/screen/auth/signup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successpage, page: () => const SuccessPassPage()),
  GetPage(name: AppRoute.successsignup, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verifsignup, page: () => const VerfiySignUp()),
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
];
