import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/data/model/tickets.dart';
import '../../../data/datasource/static/statick.dart';

enum Actions { share, delete, archive }

class OldTicketsController extends GetxController {
  RxList<Map<String, dynamic>> oldTicketData = allTickets.obs;

  void onDismissed(int index, Actions action) {
    final ticketData = oldTicketData[index];
    oldTicketData.removeAt(index);
    final ticketTitle = ticketData['name'];
    switch (action) {
      case Actions.delete:
        _showSnackbar('$ticketTitle is deleted', Colors.red);
        break;
      case Actions.archive:
        _showSnackbar('$ticketTitle is archived', Colors.blue);
        break;
      case Actions.share:
        _showSnackbar('$ticketTitle is shared', Colors.green);
        break;
    }
  }

  void _showSnackbar(String message, Color color) {
    final snackBar = SnackBar(content: Text(message), backgroundColor: color);
    Get.snackbar('', '',
        backgroundColor: Colors.transparent, messageText: snackBar);
  }
}
