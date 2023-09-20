import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/controller/client/newticket.dart';

import 'package:projet/view/screen/client/periortycard.dart';

import '../../../core/functions/validticket.dart';
import '../../../data/datasource/static/statick.dart';
import '../../widget/appbar2.dart';
import '../../widget/auth/authbutom.dart';
import '../../widget/auth/textformauth.dart';

class NewTickets extends StatefulWidget {
  final NewTicketsController controller = Get.put(NewTicketsController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  final TextEditingController filesController =
      TextEditingController(); // New field
  final TextEditingController peroirteController =
      TextEditingController(); // New field
  final DateTime selectedDate = DateTime.now();
  String? selectedPriority;

  NewTickets({super.key}); // Set to the current system date

  @override
  _NewTicketsState createState() => _NewTicketsState();
}

class _NewTicketsState extends State<NewTickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBar2Widget(
        titleText: 'New Ticket',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormAuth(
              isNumber: false,
              valid: (val) {
                return validticket(val!, "name", 3, 20);
              },
              text: "Name",
              hinttext: "Enter your name",
              iconData: Icons.person,
              mycontroller: widget.controller.nameController,
            ),
            TextFormAuth(
              isNumber: false,
              valid: (val) {
                return validticket(val!, "Question", 3, 200);
              },
              text: "Question",
              hinttext: "Enter your Question",
              iconData: Icons.question_mark,
              mycontroller: widget.controller.questionController,
            ),
            TextFormAuth(
              isNumber: false,
              valid: (val) {
                return validticket(val!, "Files", 3, 20);
              },
              text: "Files",
              hinttext: "Enter your Files",
              iconData: Icons.file_open_sharp,
              mycontroller: widget.controller.filesController,
            ),

            // Priority selection UI
            Text("Priority", style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // High Priority
                buildPriorityCard(
                  priority: "High",
                  selectedPriority: widget.selectedPriority ?? "",
                  onPressed: (priority) {
                    setState(() {
                      widget.selectedPriority = priority;
                    });
                  },
                ),

                // Medium Priority
                buildPriorityCard(
                  priority: "Medium",
                  selectedPriority: widget.selectedPriority ?? "",
                  onPressed: (priority) {
                    setState(() {
                      widget.selectedPriority = priority;
                    });
                  },
                ),

                // Low Priority
                buildPriorityCard(
                  priority: "Low",
                  selectedPriority: widget.selectedPriority ?? "",
                  onPressed: (priority) {
                    setState(() {
                      widget.selectedPriority = priority;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            AuthButom(
              text: "Create New Ticket",
              onPressed: () {
                // Get user input and create a new ticket
                final newTicket = {
                  'name': widget.controller.nameController.text,
                  'clientname': 'Mohamed souei', // Default value
                  'statu': 'non affecte', // Default value
                  'dates': widget.selectedDate,
                  'question': widget.controller.questionController.text,
                  'files': widget.controller.filesController.text, // New field
                  'peroirte':
                      widget.controller.peroirteController.text, // New field
                  'priority': widget.selectedPriority ??
                      "Low", // Set default priority if not selected
                };

                // Add the new ticket to the list
                allTickets.add(newTicket);

                // Clear the input fields
                widget.controller.nameController.clear();
                widget.controller.questionController.clear();
                widget.controller.filesController.clear(); // Clear new field
                widget.controller.peroirteController.clear(); // Clear new field

                // Clear the selected priority
                setState(() {
                  widget.selectedPriority = null;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
