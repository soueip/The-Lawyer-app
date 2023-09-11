import 'package:flutter/material.dart';

import 'package:projet/core/constant/color.dart';
import 'package:projet/core/functions/recherche.dart';
import 'package:projet/view/widget/client/oldTickets/ticketcarduser.dart';

import 'package:projet/view/widget/expert/tickets/buttons.dart';

import '../../../data/datasource/static/statick.dart';
import '../../widget/appbar.dart';

enum Actions { share, delete, archive }

class OldTickets extends StatefulWidget {
  const OldTickets({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OldTicketsState createState() => _OldTicketsState();
}

class _OldTicketsState extends State<OldTickets> {
  List<Map<String, dynamic>> oldTicketData = allTickets;
  int selectedButtonIndex = 0;
  List<Map<String, dynamic>> _filteredTickets = [];
  @override
  void initState() {
    super.initState();
    _filterTicketsuser();
  }

  void _filterTicketsuser() {
    _filteredTickets = filterTicketsuser(selectedButtonIndex);
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
                    _filterTicketsuser();
                  });
                }),
                buildButton(selectedButtonIndex, 1, 'overt', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTicketsuser();
                  });
                }),
                buildButton(selectedButtonIndex, 2, 'Ferme', (index) {
                  setState(() {
                    selectedButtonIndex = index;
                    _filterTicketsuser();
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
                return ticketcarduser(
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
