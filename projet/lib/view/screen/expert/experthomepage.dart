import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:projet/view/screen/expert/ticketpagexpert.dart';
import 'package:projet/view/widget/expert/homepage/ticketcardexp2.dart';
import '../../../controller/expert/homepage.dart';
import '../../../core/constant/imageasset.dart';
import '../../../core/functions/unaffectedtickets.dart';
import '../../../data/datasource/static/statick.dart';
import '../../widget/appbar.dart';
import '../../widget/client/homepage/textcolored.dart';
import '../../widget/expert/homepage/ticketcardexpert1.dart';

class ExpertHomepage extends StatelessWidget {
  final ExpertHomepageController controller =
      Get.put(ExpertHomepageControllerImp());
  int totalTickets = allTickets.length;
  List<Map<String, dynamic>> effectue = filterTicketsByStatus('effectue');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(
        titleText: '',
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
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
                          Get.to(const TicketListPageexpert());
                        },
                        child: TicketCardexpert(
                          title: "Total Tickets",
                          status: "$totalTickets Ticket",
                          icon: FontAwesomeIcons.scaleBalanced,
                        )),
                    InkWell(
                        onTap: () {
                          controller.updateCurrentPageIndex(1);
                          Get.to(const TicketListPageexpert());
                        },
                        child: TicketCardexpert(
                          title: "Total unaffacted",
                          status: "${effectue.length} Ticket",
                          icon: FontAwesomeIcons.peopleCarryBox,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Coloredtext(
                  leftText: "Tickets",
                  rightText: "See All",
                  rightTextOnTap: () {
                    Get.to(const TicketListPageexpert());
                  },
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: effectue.length,
                    itemBuilder: (context, index) {
                      final ticket = effectue[index];
                      return TicketCard2(
                        name: ticket['name'],
                        statu: ticket['statu'],
                        clientname: ticket['clientname'],
                        dates: ticket['dates'],
                        question: ticket['question'],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: -8,
              right: 7,
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
