import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/view/widget/appbar.dart';

import '../../../core/functions/recherche.dart';
import '../../widget/expert/homepage/ticketcardexp2.dart';
import '../../widget/expert/tickets/buttons.dart';

class TicketListPage extends StatefulWidget {
  @override
  _TicketListPageState createState() => _TicketListPageState();
}

class _TicketListPageState extends State<TicketListPage> {
  int selectedButtonIndex = 0;
  List<Map<String, dynamic>> _filteredTickets = [];

  @override
  void initState() {
    super.initState();
    _filterTickets();
  }

  void _filterTickets() {
    _filteredTickets = filterTickets(selectedButtonIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(titleText: 'tickets'),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.gris,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildButton(selectedButtonIndex, 0, 'All', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTickets();
                  });
                }),
                buildButton(selectedButtonIndex, 1, 'Completed', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTickets();
                  });
                }),
                buildButton(selectedButtonIndex, 2, 'Not Completed', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTickets();
                  });
                }),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredTickets.length,
              itemBuilder: (context, index) {
                final ticket = _filteredTickets[index];
                return TicketCard2(
                  name: ticket['name'] as String,
                  statu: ticket['statu'] as String,
                  dates: ticket['dates'] as DateTime,
                  clientname: ticket['clientname'] as String,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}