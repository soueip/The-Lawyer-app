import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/expert/homepage/status.dart';
import 'detailbutton.dart';

class TicketCard2 extends StatelessWidget {
  const TicketCard2({
    Key? key,
    required this.name,
    required this.statu,
    required this.dates,
    required this.clientname,
  }) : super(key: key);

  final String name;
  final String statu;
  final DateTime dates;
  final String clientname;

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.marron,
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.tag,
                      color: AppColor.gold,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColor.bleu,
                          ),
                    ),
                    const SizedBox(height: 4.0),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Color.fromARGB(255, 140, 146, 147),
                          fontSize: 12,
                          fontFamily: "RedHatDisplay",
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: "Client Name : "),
                          TextSpan(
                            text: clientname,
                            style: const TextStyle(
                              fontFamily: "RedHatDisplay",
                              color: AppColor.bleu,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    StatusWidget(statu: statu),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 167, 231, 253),
              height: 30,
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.calendar,
                  color: AppColor.bleu,
                  size: 15,
                ),
                const SizedBox(width: 10),
                Text(
                  DateFormat('EEEE, MMMM d').format(dates),
                  style: TextStyle(
                    color: AppColor.bleu,
                    fontSize: 12,
                    fontFamily: "RedHatDisplay",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                FaIcon(
                  FontAwesomeIcons.clock,
                  color: AppColor.bleu,
                  size: 15,
                ),
                const SizedBox(width: 10),
                Text(
                  DateFormat('HH:mm').format(dates),
                  style: TextStyle(
                    color: AppColor.bleu,
                    fontSize: 12,
                    fontFamily: "RedHatDisplay",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            DetailButton(
              text: "Details",
              onPressed: () {
                // Handle onPressed logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
