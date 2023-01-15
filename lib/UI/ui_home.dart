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
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: InkWell(
                  onTap: () => testMethod("Profile Clicked"),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            child: Image.network(
                                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg")),
                        const Flexible(
                          child: Text("User 001"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListItem("Dashboard", (() => testMethod("test 1"))),
              ListItem("Profile", (() => testMethod("test 2"))),
              ListItem("Logout", (() => testMethod("test 3"))),
            ],
          ),
        ),
        body: const Center(
          child: Text("Hello World", style: TextStyle(fontSize: 24)),
        ), // body: const Center(child: Text("Hello World")),
      ),
    );
  }
}
