import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('title')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          OtpTextField(
            fieldWidth: 60,
            borderRadius: BorderRadius.circular(10),
            numberOfFields: 5,
            borderColor: const Color.fromARGB(255, 120, 120, 121),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              ;
            }, // end onSubmit
          ),
        ]),
      ),
    );
  }
}
