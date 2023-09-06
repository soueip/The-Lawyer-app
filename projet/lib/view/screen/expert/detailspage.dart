import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/view/widget/appbar2.dart';
import 'package:projet/view/widget/expert/homepage/status.dart';
import 'package:intl/intl.dart';
import '../../../core/constant/color.dart';

class DetailTicketPage extends StatelessWidget {
  final String ticketName;
  final String clientName;
  final String ticketStatus;
  final DateTime ticketDate;
  final String question;

  const DetailTicketPage({
    Key? key,
    required this.ticketName,
    required this.clientName,
    required this.ticketStatus,
    required this.ticketDate,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBar2Widget(titleText: 'Ticket Details'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.gold,
              ),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.scaleBalanced,
                  color: AppColor.lightwhite,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              ticketName,
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Status:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                StatusWidget(statu: ticketStatus),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.user,
                  color: AppColor.gold,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Client Name:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  clientName,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.clock,
                  color: AppColor.gold,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Time:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  DateFormat('HH:mm').format(ticketDate),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.calendar,
                  color: AppColor.gold,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Ticket Date:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  DateFormat('dd/MM/yyyy').format(ticketDate),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Files Uploaded",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(height: 15),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Description",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 195, 237, 252),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  question,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
