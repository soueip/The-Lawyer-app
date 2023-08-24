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
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const FaIcon(
              FontAwesomeIcons.ticketAlt,
              color: AppColor.red,
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
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(width: 90.0),
            Image.asset(
              AppImageAsset.cardimage,
              fit: BoxFit.cover,
              width: 70,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
