class Ticket {
  final String name;
  final String assignedto;
  final DateTime date;
  final String question;
  final String statu;

  Ticket({
    required this.name,
    required this.statu,
    required this.assignedto,
    required this.date,
    required this.question,
  });
}
