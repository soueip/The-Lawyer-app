import 'package:projet/data/datasource/static/statick.dart';

List<Map<String, dynamic>> filterTicketsByStatus(String status) {
  return allTickets.where((ticket) => ticket['statu'] == status).toList();
}
