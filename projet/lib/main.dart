import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/localisation/changelocation.dart';
import 'package:projet/core/localisation/translation.dart';
import 'package:projet/routes.dart';
import 'package:projet/view/screen/auth/forget%20password/resetpassword.dart';
import 'package:projet/view/screen/auth/forget%20password/successpage.dart';
import 'package:projet/view/screen/auth/login.dart';
import 'package:projet/view/screen/language.dart';
import 'package:projet/view/screen/onboarding.dart';

import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      home: const Language(),
      routes: routes,
    );
  }
}
