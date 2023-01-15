import 'package:bugtracker/mock/m_method.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItem extends StatelessWidget {
  String itemname = "WARNING : Value is not given.";
  VoidCallback method;
  ListItem(this.itemname, this.method, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(itemname), onTap: () => testMethod(itemname));
  }
}
