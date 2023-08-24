import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/client/homepage.dart';
import 'package:projet/data/datasource/static/statick.dart';
import 'package:projet/view/widget/client/carousel.dart';
import 'package:projet/view/widget/client/textcolored.dart';
import '../../widget/client/offrecard.dart';
import '../../widget/client/ticketcard.dart';

class ClientHomepage extends StatelessWidget {
  final ClientHomepageController controller =
      Get.put(ClientHomepageControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselWidget(carouselItems: carouselItems),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              "Latest Ticket",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const TicketCard(
            title: "Ticket Title",
            status: "Open",
          ),
          Coloredtext(),
          const Offrecard(
            nom: "Offre 1",
            description: "5 ticket vous pouver envoyer a nos experts",
          ),
        ],
      ),
    );
  }
}
