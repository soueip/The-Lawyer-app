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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColor.gris, // Use app color.gray here
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const FaIcon(
              FontAwesomeIcons.ticketAlt,
              color: AppColor.red,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Status: $status"),
              ],
            ),
            Image.asset(
              AppImageAsset.cardimage,
              fit: BoxFit.cover,
              width: 90,
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
