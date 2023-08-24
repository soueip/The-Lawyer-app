class Ticket {
  final String title;
  final String description;

  Ticket({required this.title, required this.description});
}

// Usage in the code
final tickets = [
  Ticket(
      title: "Concert Ticket", description: "Admission to the summer concert"),
  Ticket(
      title: "Movie Premiere",
      description: "Access to the exclusive movie screening"),
  // Add more tickets here
];
