import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/appbar.dart';
import '../../../data/datasource/static/statick.dart';
import 'addbutton.dart';

class BottomNavBar extends StatefulWidget {
  final List<Widget> screens;

  BottomNavBar({Key? key, required this.screens}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  double _iconSize = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: widget.screens,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: navBarItems.map((item) {
                  final index = navBarItems.indexOf(item);
                  return IconButton(
                    iconSize: _iconSize,
                    icon: item.icon,
                    color: _currentIndex == index ? AppColor.bleu : Colors.grey,
                    onPressed: () {
                      setState(() {
                        _currentIndex = index;
                        _iconSize = _currentIndex == index ? 30 : 25;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          AddButton(),
        ],
      ),
    );
  }
}
