import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet/core/constant/color.dart';
import 'package:projet/core/constant/imageasset.dart';

class Offrecard extends StatelessWidget {
  const Offrecard({
    Key? key,
    required this.nom,
    required this.description,
  }) : super(key: key);

  final String nom;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColor.goldy,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.marron,
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.tag,
                  color: AppColor.gold,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nom,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey, // Use a muted color for description
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
