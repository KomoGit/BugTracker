import 'package:flutter/material.dart';

class DashboardCards extends StatelessWidget {
  final double cardSize;
  final Widget? childWidget;

  const DashboardCards(this.cardSize, this.childWidget, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        shadowColor: Colors.white,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: SizedBox(width: cardSize, height: cardSize, child: childWidget));
  }
}
