import 'package:bugtracker/UI/Screens/ui_app.dart';
import 'package:bugtracker/UI/Screens/ui_settings.dart';
import 'package:bugtracker/UI/Screens/ui_testpage.dart';
import 'package:flutter/material.dart';
import 'package:bugtracker/UI/ui_listitem.dart';
import 'package:bugtracker/Debug/d_log.dart';

class PersistentDrawer extends StatelessWidget {
  const PersistentDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: InkWell(
              onTap: (() => debugOut("Profile Clicked")),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Flexible(
                        child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                          "https://randomuser.me/api/portraits/women/31.jpg"),
                    )),
                    Flexible(
                      child: Text("${lang.getUserGreetText!}Lena!"),
                    )
                  ],
                ),
              ),
            ),
          ), //When adding a list item, ensure that you have added them on Localization first.
          ListItem(lang.getHomeText!, const MyApp()),
          ListItem(lang.getTestPageText!, const TestPage()),
          ListItem(lang.getSettingsText!, const SettingsPage())
        ],
      ),
    );
  }
}
