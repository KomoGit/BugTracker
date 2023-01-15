import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Ensure no code is added here.
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
              listItem(context, "Item 1", (() => print("Logger - Item 1"))),
              listItem(context, "Item 2", (() => print("Logger - Item 2"))),
              listItem(context, "Item 3", (() => print("Logger - Item 3"))),
            ],
          ),
        ),
        body: const Center(child: Text("Hello World")),
      ),
    );
  }

  ListTile listItem(
      BuildContext context, String itemname, VoidCallback method) {
    return ListTile(
      title: Text(itemname),
      onTap: method,
      // onTap: () {
      //   print("Logger : - $itemname was pressed"); //REMOVE ME
      //   Navigator.pop(context);
      // },
    );
  }
}
