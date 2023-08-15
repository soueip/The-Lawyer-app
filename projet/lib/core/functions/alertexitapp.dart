import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/core/constant/color.dart';

Future<bool> alertExitApp() async {
  final result = await Get.defaultDialog(
    title: "Alerte",
    titleStyle:
        const TextStyle(color: AppColor.bleu, fontWeight: FontWeight.bold),
    middleText: "Voulez-vous quitter l'application ?",
    actions: [
      ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 255, 255, 255)),
          side: MaterialStateProperty.all(
              const BorderSide(color: AppColor.red)), // Red border
          foregroundColor:
              MaterialStateProperty.all(AppColor.red), // Text color
        ),
        onPressed: () {
          exit(0);
        },
        child: const Text("Quitter"),
      ),
      ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(AppColor.lightwhite),
        ),
        onPressed: () {
          Get.back();
        },
        child: const Text(
          "Annulée",
          style: TextStyle(color: AppColor.gris),
        ),
      ),
    ],
  );
  return result ?? false;
}
