import 'package:badr_agri/domain/equipements.dart';
import 'package:flutter/material.dart';

class EquipementCard extends StatelessWidget {
  final Equipement equipement;
  final void Function(Equipement equipement) onDismissed;

  const EquipementCard(
      {super.key, required this.equipement, required this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(equipement.id),
      onDismissed: (direction) => onDismissed(equipement),
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
