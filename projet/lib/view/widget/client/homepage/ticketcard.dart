import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/constant/imageasset.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({
    Key? key,
    required this.title,
    required this.status,
  }) : super(key: key);

  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColor.gris,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.redy,
              ),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.ticketAlt,
                  color: AppColor.red,
                ),
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
                  "Status: $status",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 60.0),
            Transform.scale(
              alignment: Alignment.bottomLeft,
              scale: 1.8,
              child: Image.asset(
                AppImageAsset.cardimage,
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
