import 'package:flutter/material.dart';

class TicketDetails extends StatelessWidget {
  final String ticketName;
  final String ticketStatus;
  final DateTime ticketDate;
  final String ticketClientName;

  TicketDetails({
    required this.ticketName,
    required this.ticketStatus,
    required this.ticketDate,
    required this.ticketClientName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $ticketName'),
            Text('Status: $ticketStatus'),
            Text('Date: ${ticketDate.toString()}'),
            Text('Client Name: $ticketClientName'),
            // Add more widgets to display other ticket details as needed.
          ],
        ),
      ),
    );
  }
}
