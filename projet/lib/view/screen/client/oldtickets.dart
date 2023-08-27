import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:projet/data/model/tickets.dart';
import 'package:intl/intl.dart';

import '../../../data/datasource/static/statick.dart';

class OldTickets extends StatefulWidget {
  @override
  _OldTicketsState createState() => _OldTicketsState();
}

class _OldTicketsState extends State<OldTickets> {
  List<Map<String, dynamic>> oldTicketData = allTickets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: oldTicketData.length,
        itemBuilder: (context, index) {
          final ticketData = oldTicketData[index];
          final ticket = Ticket(
            name: ticketData['name'],
            assignedto: ticketData['assignedto'],
            date: ticketData['dates'],
            question: ticketData['question'],
            statu: ticketData['statu'],
          );
          return Slidable(
            startActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  backgroundColor: Colors.lightGreen,
                  icon: Icons.share,
                  label: 'Share',
                  onPressed: (context) => _onDismissed(),
                ),
              ],
            ),
            child: buildTicketListTile(ticket),
          );
        },
      ),
    );
  }

  void _onDismissed() {
    // Add your logic for when the action is dismissed here
  }

  Widget buildTicketListTile(Ticket ticket) => ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        title: Text(
          ticket.name,
          style: Theme.of(context).textTheme.headline4,
        ),
        dense: true,
        onTap: () {
          // Add logic for handling tile tap
        },
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6),
            Text(
              'Assigned To: ' + ticket.assignedto + ', statu ' + ticket.statu,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 4),
            Text(
              ticket.question,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        isThreeLine: true,
      );
}
