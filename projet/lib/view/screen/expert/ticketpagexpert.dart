import 'package:flutter/material.dart';
import 'package:projet/core/constant/color.dart';

import '../../../core/functions/recherche.dart';
import '../../widget/appbar.dart';
import '../../widget/expert/homepage/ticketcardexp2.dart';
import '../../widget/expert/tickets/buttons.dart';

class TicketListPageexpert extends StatefulWidget {
  const TicketListPageexpert({super.key});

  @override
  _TicketListPageexpertState createState() => _TicketListPageexpertState();
}

class _TicketListPageexpertState extends State<TicketListPageexpert> {
  int selectedButtonIndex = 0;
  List<Map<String, dynamic>> _filteredTickets = [];

  @override
  void initState() {
    super.initState();
    _filterTicketsexpert();
  }

  void _filterTicketsexpert() {
    _filteredTickets = filterTicketsexpert(selectedButtonIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleText: 'tickets'),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
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
                    _filterTicketsexpert();
                  });
                }),
                buildButton(selectedButtonIndex, 1, 'Completed', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTicketsexpert();
                  });
                }),
                buildButton(selectedButtonIndex, 2, 'Not Completed', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTicketsexpert();
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
                  question: ticket['question'] as String,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
