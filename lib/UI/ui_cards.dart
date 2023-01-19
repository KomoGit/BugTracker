import 'package:flutter/material.dart';

class DashboardCards extends StatelessWidget {
  final int cardSize;
  final Widget? childWidget;

  const DashboardCards(this.cardSize, this.childWidget, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          border: Border.all(width: 50, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(15)))),
      child: childWidget,
    );
  }
}
