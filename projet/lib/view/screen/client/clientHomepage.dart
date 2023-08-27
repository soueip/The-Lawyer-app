import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/client/homepage.dart';
import 'package:projet/data/datasource/static/statick.dart';
import 'package:projet/view/screen/client/blog.dart';
import 'package:projet/view/screen/client/offre.dart';
import 'package:projet/view/screen/client/oldtickets.dart';
import 'package:projet/view/widget/client/homepage/carousel.dart';

import '../../widget/client/homepage/blogcard.dart';
import '../../widget/client/homepage/offrecard.dart';
import '../../widget/client/homepage/textcolored.dart';
import '../../widget/client/homepage/ticketcard.dart';

class ClientHomepage extends StatelessWidget {
  final ClientHomepageController controller =
      Get.put(ClientHomepageControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWidget(carouselItems: carouselItems),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Latest Ticket",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(OldTickets());
              },
              child: TicketCard(
                title: "Ticket Title",
                status: "Open",
              ),
            ),
            SizedBox(height: 20),
            Coloredtext(
              leftText: "Buy New Offer",
              rightText: "See All",
              rightTextOnTap: () {
                Get.to(Offre());
              },
            ),
            Offrecard(
              nom: offreList[0]['nom'],
              description: offreList[0]['description'],
            ),
            SizedBox(height: 20),
            Coloredtext(
              leftText: "Blogs",
              rightText: "See All",
              rightTextOnTap: () {
                Get.to(Blog());
              },
            ),
            BlogCard(
              title: bloglist[0].title!,
              description: bloglist[0].description!,
              blogimage: bloglist[0].blogimage!,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
