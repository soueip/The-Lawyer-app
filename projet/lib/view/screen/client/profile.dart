import 'package:flutter/material.dart';
import 'package:projet/core/functions/logout.dart';
import 'package:projet/view/screen/auth/login.dart';
import 'package:projet/view/widget/appbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Future<bool> _showLogoutConfirmation(BuildContext context) async {
    final result = await alertLogoutApp();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final logoutConfirmed = await _showLogoutConfirmation(context);
        return logoutConfirmed;
      },
      child: Scaffold(
        appBar: const AppBarWidget(
          titleText: 'Profile',
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50.0,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  final logoutConfirmed =
                      await _showLogoutConfirmation(context);
                  if (logoutConfirmed) {
                    // User confirmed logout, you can perform the logout action here.
                  }
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
