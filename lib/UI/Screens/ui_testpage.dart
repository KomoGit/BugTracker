import 'package:bugtracker/UI/ui_appbar.dart';
import 'package:bugtracker/UI/ui_drawer.dart';
import 'package:flutter/material.dart';

// TEST PAGE IS FOR DEBUG PURPOSES. IT WILL BE DELETED
class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PersistentAppbar(),
      backgroundColor: Colors.red,
      drawer: PersistentDrawer(),
      body: Center(
        child: Text("Hello Testpage"),
      ),
    );
  }
}
