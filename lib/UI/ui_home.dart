import 'package:bugtracker/UI/ui_item.dart';
import 'package:flutter/material.dart';
import 'package:bugtracker/mock/m_method.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Project - Tracer"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text('Insert User Profile Here.',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              ListItem("Dashboard", (() => testMethod("test 1"))),
              ListItem("Profile", (() => testMethod("test 2"))),
              ListItem("Logout", (() => testMethod("test 3"))),
            ],
          ),
        ),
        body: const Center(child: Text("Hello World")),
      ),
    );
  }
}
