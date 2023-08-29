import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key? key,
    required this.title,
    required this.description,
    required this.blogimage,
  }) : super(key: key);

  final String title;
  final String description;
  final blogimage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: AppColor.gris,
          width: 2,
        ),
      ),
      color: AppColor.lightwhite,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
              child: Image.asset(
                blogimage,
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
            const SizedBox(width: 36.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 4.0),
                Text(
                  "$description",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
