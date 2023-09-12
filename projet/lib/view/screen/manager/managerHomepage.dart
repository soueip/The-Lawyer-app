import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:projet/controller/manager/homepage.dart';
import 'package:projet/data/datasource/static/statick.dart';
import 'package:projet/view/screen/client/oldtickets.dart';
import 'package:projet/view/screen/manager/ticketpagemanager.dart';

import 'package:projet/view/widget/appbar.dart';
import 'package:projet/view/widget/client/homepage/textcolored.dart';
import 'package:projet/view/widget/expert/homepage/ticketcardexp2.dart';
import 'package:projet/view/widget/expert/homepage/ticketcardexpert1.dart';

import '../../../core/constant/imageasset.dart';
import '../../../core/functions/unaffectedtickets.dart';

class ManagerHomepage extends StatelessWidget {
  ManagerHomepage({Key? key}) : super(key: key);
  final ManagerHomepageController controller =
      Get.put(ManagerHomepageControllerImp());
  int totalTickets = allTickets.length;

  List<Map<String, dynamic>> nonAffecteTickets =
      filterTicketsByStatus('non affecte');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarWidget(
        titleText: '',
      ),
      body: Stack(
        children: [
          Positioned(
            top: -8,
            right: 7,
            child: Image.asset(
              AppImageAsset.experthello,
              width: 180,
              height: 180,
            ),
          ),
          SingleChildScrollView(
            child: Column(
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
                        "Hello,\nManager",
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
                          Get.to(TicketListPagemanager());
                        },
                        child: TicketCardexpert(
                          title: "Total Tickets",
                          status: "$totalTickets Ticket",
                          icon: FontAwesomeIcons.scaleBalanced,
                        )),
                    InkWell(
                        onTap: () {
                          controller.updateCurrentPageIndex(1);
                          Get.to(TicketListPagemanager());
                        },
                        child: TicketCardexpert(
                          title: "Total unaffacted",
                          status: "${nonAffecteTickets.length} Ticket",
                          icon: FontAwesomeIcons.peopleCarryBox,
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                Coloredtext(
                  leftText: "Ticket non affecte",
                  rightText: "See All",
                  rightTextOnTap: () {
                    Get.to(TicketListPagemanager());
                  },
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: nonAffecteTickets.length,
                    itemBuilder: (context, index) {
                      final ticket = nonAffecteTickets[index];
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
