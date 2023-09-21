import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet/data/datasource/static/statick.dart';

import '../../core/constant/routes.dart';

class NewTicketsController extends GetxController {
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();

  // Use Rx for observables
  final TextEditingController nameController = TextEditingController();
  final TextEditingController clientNameController = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  final TextEditingController filesController = TextEditingController();
  final TextEditingController peroirteController = TextEditingController();
  final TextEditingController statusController = TextEditingController();

  // Use Rx<DateTime> for selectedDate
  final Rx<DateTime> selectedDate = DateTime.now().obs;

  // Use RxBool for isStatusDisabled and isClientNameDisabled
  final RxBool isStatusDisabled = true.obs;
  final RxBool isClientNameDisabled = true.obs;

  @override
  void onInit() {
    // Initialize your state here if needed
    super.onInit();
  }

  void toggleStatus() {
    isStatusDisabled.value = !isStatusDisabled.value;
  }

  void toggleClientName() {
    isClientNameDisabled.value = !isClientNameDisabled.value;
  }

  void submitTicket(String? selectedPriority) {
    if (formstate.currentState!.validate()) {
      // Get user input and create a new ticket
      Get.offNamed(AppRoute.oldticket);
      final newTicket = {
        'name': nameController.text,
        'clientname': isClientNameDisabled.value
            ? 'Mohamed souei'
            : clientNameController.text,
        'statu': isStatusDisabled.value ? 'en cours' : statusController.text,
        'dates': selectedDate.value,
        'question': questionController.text,
        'files': filesController.text,
        'peroirte': peroirteController.text,
        'priority': selectedPriority ?? 'Low',
      };

      allTickets.add(newTicket); // Assuming allTickets is defined somewhere
    } else {
      // Handle validation or show an error message
      print('Not Valid');
    }
  }
}
