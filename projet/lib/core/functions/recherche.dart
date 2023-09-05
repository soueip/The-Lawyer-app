import '../../../../data/datasource/static/statick.dart';

List<Map<String, dynamic>> filterTickets(int selectedButtonIndex) {
  List<Map<String, dynamic>> filteredTickets = [];

  if (selectedButtonIndex == 1) {
    // Filter tickets with status "clôturer"
    filteredTickets =
        allTickets.where((ticket) => ticket['statu'] == 'clôturer').toList();
  } else if (selectedButtonIndex == 2) {
    // Filter tickets with status different than "clôturer"
    filteredTickets =
        allTickets.where((ticket) => ticket['statu'] != 'clôturer').toList();
  } else {
    // Show all tickets for other indices
    filteredTickets = List.from(allTickets);
  }

  return filteredTickets;
}
