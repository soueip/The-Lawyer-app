import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/data/model/tickets.dart';

import '../../../data/datasource/static/statick.dart';
import '../../widget/client/oldTickets/ticketlist.dart';

enum Actions { share, delete, archive }

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
                  icon: FontAwesomeIcons.share,
                  label: 'Share',
                  onPressed: (context) => _onDismissed(index, Actions.share),
                ),
                SlidableAction(
                  backgroundColor: Colors.blue,
                  icon: FontAwesomeIcons.archive,
                  label: 'archive',
                  onPressed: (context) => _onDismissed(index, Actions.archive),
                ),
              ],
            ),
            endActionPane: ActionPane(motion: const BehindMotion(), children: [
              SlidableAction(
                backgroundColor: Colors.red,
                icon: Icons.delete,
                label: 'delete',
                onPressed: (context) => _onDismissed(index, Actions.delete),
              ),
            ]),
            child: TicketTile(ticket), // Use the TicketTile widget
          );
        },
      ),
    );
  }

  void _onDismissed(int index, Actions action) {
    final ticketData = oldTicketData[index];
    setState(() => oldTicketData.removeAt(index));
    final ticketTitle = ticketData['name'];
    switch (action) {
      case Actions.delete:
        _showSnackbar(context, '$ticketTitle is deleted', Colors.red);
        break;
      case Actions.archive:
        _showSnackbar(context, '$ticketTitle is archived', Colors.blue);
        break;
      case Actions.share:
        _showSnackbar(context, '$ticketTitle is shared', Colors.green);
        break;
    }
  }

  void _showSnackbar(BuildContext context, String message, Color color) {
    final snackBar = SnackBar(content: Text(message), backgroundColor: color);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
