import '../../../../data/datasource/static/statick.dart';

List<Map<String, dynamic>> filterTicketsexpert(int selectedButtonIndex) {
  List<Map<String, dynamic>> filteredTickets = [];

  if (selectedButtonIndex == 1) {
    // Filter tickets with status "clôturer"
    filteredTickets = allTickets
        .where((ticket) =>
            ticket['statu'] == 'clôturer' || ticket['statu'] == 'valide')
        .toList();
  } else if (selectedButtonIndex == 2) {
    // Filter tickets with status different than "clôturer"
    filteredTickets =
        allTickets.where((ticket) => ticket['statu'] == 'effectue').toList();
  } else {
    // Show all tickets for other indices
    filteredTickets =
        allTickets.where((ticket) => ticket['statu'] != 'non affecte').toList();
  }

  return filteredTickets;
}

List<Map<String, dynamic>> filterTicketsmanager(int selectedButtonIndex) {
  List<Map<String, dynamic>> filteredTickets = [];

  if (selectedButtonIndex == 1) {
    // Filter tickets with status "clôturer"
    filteredTickets = allTickets
        .where((ticket) =>
            ticket['statu'] != 'non affecte' && ticket['statu'] != 'en cours')
        .toList();
  } else if (selectedButtonIndex == 2) {
    // Filter tickets with status different than "clôturer"
    filteredTickets = allTickets
        .where((ticket) =>
            ticket['statu'] == 'non affecte' || ticket['statu'] == 'en cours')
        .toList();
  } else {
    // Show all tickets for other indices
    filteredTickets = List.from(allTickets);
  }

  return filteredTickets;
}

List<Map<String, dynamic>> filterTicketsuser(int selectedButtonIndex) {
  List<Map<String, dynamic>> filteredTickets = [];

  if (selectedButtonIndex == 1) {
    // Filter tickets with status "clôturer"
    filteredTickets = allTickets
        .where((ticket) =>
            ticket['statu'] == 'valide' && ticket['statu'] == 'en cours')
        .toList();
  } else if (selectedButtonIndex == 2) {
    // Filter tickets with status different than "clôturer"
    filteredTickets =
        allTickets.where((ticket) => ticket['statu'] == 'clôturer').toList();
  } else {
    filteredTickets = allTickets
        .where((ticket) =>
            ticket['statu'] == 'clôturer' ||
            ticket['statu'] == 'valide' ||
            ticket['statu'] == 'en cours')
        .toList();
  }

  return filteredTickets;
}
