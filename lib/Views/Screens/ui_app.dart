import 'package:bugtracker/Localization/lang_current.dart';
import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/Views/Widgets/ui_appbar.dart';
import 'package:bugtracker/Views/Widgets/ui_drawer.dart';
import 'package:bugtracker/Views/Screens/ui_home.dart';
import 'package:flutter/material.dart';

LangSelect lang = LangSelect();
int currentPageIndex = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(25, 25, 25, 255),
        appBar: const PersistentAppbar(),
        drawer: const PersistentDrawer(),
        //On Press a new window should be opened to allow user to insert ticket details
        floatingActionButton: FloatingActionButton(
            tooltip: CurrentStrings.currentFloatingActionToolTipText!,
            onPressed: () {},
            child: const Icon(Icons.add)),
        body:
            HomePage(), //Build a better system for translation and localization.
      ),
    );
  }
}
