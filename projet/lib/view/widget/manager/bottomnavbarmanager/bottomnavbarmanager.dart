import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';
import '../../../../data/datasource/static/statick.dart';

class BottomNavBarmanager extends StatefulWidget {
  final List<Widget> screens;

  const BottomNavBarmanager({Key? key, required this.screens})
      : super(key: key);

  @override
  _BottomNavBarmanagerState createState() => _BottomNavBarmanagerState();
}

class _BottomNavBarmanagerState extends State<BottomNavBarmanager> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppColor.bleu,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: navBarexpertItems,
        ),
      ),
    );
  }
}
