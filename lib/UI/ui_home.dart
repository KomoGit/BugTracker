import 'package:bugtracker/Debug/d_log.dart';
import 'package:bugtracker/UI/ui_appbar.dart';
import 'package:bugtracker/UI/ui_drawer.dart';
import 'package:flutter/material.dart';

int currentPageIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: const PersistentAppbar(),
        drawer: const PersistentDrawer(),
        //On Press a new window should be opened to allow user to insert ticket details
        floatingActionButton: FloatingActionButton(
          tooltip: "New Ticket",
          child: const Icon(Icons.add),
          onPressed: () => debugOut("Floating Action Button"),
        ),
        body: const Center(
          child: Text("Hello World", style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
