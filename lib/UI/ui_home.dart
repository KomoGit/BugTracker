import 'package:bugtracker/Debug/d_log.dart';
import 'package:bugtracker/UI/ui_item.dart';
import 'package:flutter/material.dart';

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
                  // onTap: () => testMethod("Profile Clicked"),
                  onTap: (() => debugOut("Profile Clicked")),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Flexible(
                            child: CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: NetworkImage(
                              "https://randomuser.me/api/portraits/women/31.jpg"),
                        )),
                        // child: Image.network(
                        //     "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg")),
                        Flexible(
                          child: Text("User 001"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListItem("Dashboard", (() => debugOut("test 1"))),
              ListItem("Profile", (() => debugOut("test 2"))),
              ListItem("Logout", (() => debugOut("test 3"))),
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
