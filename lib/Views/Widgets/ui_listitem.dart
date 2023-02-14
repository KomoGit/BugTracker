import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItem extends StatelessWidget {
  final Widget page;
  //final StatelessWidget page;
  String itemname = "WARNING : Value is not given.";
  ListItem(this.itemname, this.page, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(itemname),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => page)));
      },
    );
  }
}
