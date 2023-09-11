import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/constant/color.dart';
import '../../../../data/model/tickets.dart';

class TicketTile extends StatelessWidget {
  final Ticket ticket;

  const TicketTile(this.ticket, {super.key});

  @override
  Widget build(BuildContext context) {
    Color containerColor = _getContainerColor(ticket.statu);
    Color iconColor = _getIconColor(ticket.statu);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      title: Text(
        ticket.name,
        style: Theme.of(context).textTheme.headline4,
      ),
      dense: true,
      onTap: () {
        // Add your onTap logic here
      },
      leading: CircleAvatar(
        radius: 30,
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: containerColor,
          ),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.ticketAlt,
              color: iconColor,
            ),
          ),
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ticket.question,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
      isThreeLine: true,
    );
  }

  Color _getContainerColor(String statu) {
    switch (statu) {
      /*      case "non affecte":
        return AppColor.redy;
      case "effectue":
        return AppColor.redy;
      case "valide":
        return AppColor.redy;
      case "clôturer":
        return Colors.green.shade50; */
      default:
        return AppColor.goldy;
    }
  }

  Color _getIconColor(String statu) {
    switch (statu) {
/*       case "non affecte":
        return AppColor.gold;
      case "effectue":
        return AppColor.gold;
      case "valide":
        return AppColor.gold;
      case "clôturer":
        return AppColor.gold; */
      default:
        return AppColor.gold;
    }
  }
}
