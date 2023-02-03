// ignore: unused_import
import 'package:bugtracker/Views/Widgets/ui_appbar.dart';
import 'package:flutter/material.dart';

class TicketForm extends StatelessWidget {
  const TicketForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PersistentAppbar(),
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Hello Testpage"),
      ),
    );
  }
}
