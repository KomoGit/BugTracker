import 'package:bugtracker/Debug/d_log.dart';
import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/UI/Widgets/ui_appbar.dart';
import 'package:bugtracker/UI/Widgets/ui_drawer.dart';
import 'package:bugtracker/UI/Screens/ui_home.dart';
import 'package:flutter/material.dart';

LangSelect lang = LangSelect();
int currentPageIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(25, 25, 25, 255),
        appBar: const PersistentAppbar(),
        drawer: const PersistentDrawer(),
        //On Press a new window should be opened to allow user to insert ticket details
        floatingActionButton: FloatingActionButton(
          tooltip: lang
              .getFloatingActionText, //Build a better system for translation and localization.
          child: const Icon(Icons.add),
          onPressed: () => debugOut("Floating Action Button"),
        ),
        body: HomePage(),
      ),
    );
  }
}
