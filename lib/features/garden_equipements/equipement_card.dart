import 'package:badr_agri/domain/equipements.dart';
import 'package:flutter/material.dart';

class EquipementCard extends StatelessWidget {
  final Equipement equipement;

  const EquipementCard({super.key, required this.equipement});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(equipement.id),
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(equipement.name),
            Text(equipement.quantity.toString())
          ],
        ),
      ),
    );
  }
}
