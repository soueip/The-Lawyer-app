import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:projet/view/widget/expert/homepage/ticketcardexp2.dart';
import '../../../controller/expert/homepage.dart';
import '../../../core/constant/imageasset.dart';
import '../../../data/datasource/static/statick.dart';
import '../../widget/appbar.dart';
import '../../widget/client/homepage/blogcard.dart';
import '../../widget/client/homepage/textcolored.dart';

import '../../widget/expert/homepage/ticketcardexpert1.dart';
import '../client/blog.dart';
import '../client/oldtickets.dart';

class ExpertHomepage extends StatelessWidget {
  final ExpertHomepageController controller =
      Get.put(ExpertHomepageControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWidget(
        titleText: '',
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Hello,\nexpert",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          controller.updateCurrentPageIndex(1);
                          Get.to(const OldTickets());
                        },
                        child: TicketCardexpert(
                          title: "Total Orders",
                          status: "20 Orders",
                          icon: FontAwesomeIcons.scaleBalanced,
                        )),
                    InkWell(
                        onTap: () {
                          controller.updateCurrentPageIndex(1);
                          Get.to(const OldTickets());
                        },
                        child: TicketCardexpert(
                          title: "Total Orders",
                          status: "20 Orders",
                          icon: FontAwesomeIcons.peopleCarryBox,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Coloredtext(
                  leftText: "Tickets",
                  rightText: "See All",
                  rightTextOnTap: () {
                    Get.to(const Blog());
                  },
                ),
                TicketCard2(
                  name: allTickets[0]['name'],
                  statu: allTickets[0]['statu'],
                  clientname: allTickets[0]['clientname'],
                  dates: allTickets[0]['dates'],
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: -8, // Adjust this value to control the overlap
              right: 7, // Adjust this value to control the overlap
              child: Image.asset(
                AppImageAsset.experthello,
                width: 180,
                height: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
