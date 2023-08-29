import 'package:flutter/material.dart';

import '../../widget/appbar.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        titleText: 'Blog Page',
      ),
      // Add your Blog screen content here
      body: Center(
        child: Text('Blog Screen'),
      ),
    );
  }
}
