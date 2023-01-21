import 'package:bugtracker/Debug/d_log.dart';
import 'package:bugtracker/UI/Screens/ui_app.dart';
import 'package:flutter/material.dart';

// An extremenly weird bug, if you don't change screens the alert dialog will not pop up.
// ignore: must_be_immutable
class Alert extends StatelessWidget {
  String alertTitle;
  String alertDescription;
  Alert(this.alertTitle, this.alertDescription, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(alertTitle),
      content: Text(alertDescription),
      actions: [
        TextButton(
            onPressed: (() {
              debugOut("Action Yes");
              Navigator.pop(context);
            }),
            child: Text(lang.getYesText!)),
        TextButton(
          onPressed: (() {
            debugOut("Action No");
            Navigator.pop(context);
          }),
          child: Text(lang.getNoText!),
        ),
      ],
    );
  }
}
