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
