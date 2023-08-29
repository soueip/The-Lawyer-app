import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/datasource/static/statick.dart';
import '../../widget/client/homepage/blogcard.dart';
import '../../widget/client/homepage/carousel.dart';
import '../../widget/client/homepage/offrecard.dart';
import '../../widget/client/homepage/textcolored.dart';
import '../../widget/client/homepage/ticketcard.dart';
import '../client/blog.dart';
import '../client/offre.dart';
import '../client/oldtickets.dart';

class ExpertHomepage extends StatelessWidget {
  const ExpertHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWidget(carouselItems: carouselItems),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Latest Ticket",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const OldTickets());
              },
              child: const TicketCard(
                title: "Ticket Title",
                status: "Open",
              ),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
