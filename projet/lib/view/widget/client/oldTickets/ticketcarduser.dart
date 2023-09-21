import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/screen/expert/detailspage.dart';

class ticketcarduser extends StatelessWidget {
  const ticketcarduser({
    Key? key,
    required this.name,
    required this.statu,
    required this.dates,
    required this.clientname,
    required this.question,
  }) : super(key: key);

  final String name;
  final String statu;
  final DateTime dates;
  final String clientname;
  final String question;

  @override
  Widget build(BuildContext context) {
    Color iconColor; // Define a variable to store the icon color

    // Use an if statement to conditionally set the icon color
    if (statu == 'clôturer') {
      iconColor = Colors.green; // Set icon color to green for 'clôturer' status
    } else if (statu == 'valide') {
      iconColor = Colors.red; // Set icon color to red for 'valide' status
    } else {
      iconColor = Colors.red; // Set a default color for other statuses
    }

    return GestureDetector(
      onTap: () {
        // Navigate to DetailTicketPage and pass data.
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailTicketPage(
              ticketName: name,
              clientName: clientname,
              ticketStatus: statu,
              ticketDate: dates,
              question: question,
            ),
          ),
        );
      },
      child: Card(
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.goldy,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.tag,
                        color:
                            iconColor, // Use the conditionally set icon color
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
                            TextSpan(
                              text: question,
                              style: const TextStyle(
                                fontFamily: "RedHatDisplay",
                                color: Color.fromARGB(255, 126, 129, 130),
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
