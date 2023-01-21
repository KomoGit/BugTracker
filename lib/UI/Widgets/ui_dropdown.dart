import 'package:bugtracker/UI/Screens/ui_app.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['English (default)', 'Russian', 'Turkish'];

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}
//BUG #1
// Even if chosen language is differrent the first stated language
// In the dropdown will be the first in the list.

//BUG #2
// When the language is changed, no alert is being shown to user.
// User has to leave the page using drawer to see changes in language.
class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      // elevation: 4,
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          lang.selectLanguage(value!);
          dropdownValue = value;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
