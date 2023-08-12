import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/localisation/changelocation.dart';
import 'package:projet/core/localisation/translation.dart';
import 'package:projet/routes.dart';
import 'package:projet/view/screen/language.dart';

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
      theme: ThemeData(
        fontFamily: "RedHatDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              height: 1.5,
              fontSize: 15,
              color: AppColor.lightwhite,
              fontWeight: FontWeight.normal),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
