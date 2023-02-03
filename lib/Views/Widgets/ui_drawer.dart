import 'package:bugtracker/Views/Screens/ui_app.dart';
import 'package:bugtracker/Views/Screens/ui_login.dart';
import 'package:bugtracker/Views/Screens/ui_settings.dart';
import 'package:bugtracker/Views/Screens/ui_testpage.dart';
import 'package:flutter/material.dart';
import 'package:bugtracker/Views/Widgets/ui_listitem.dart';
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(-10, 1),
                )
              ],
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/13766882/pexels-photo-13766882.jpeg"), //Make it so this image can be changed in settings.
                  fit: BoxFit.cover),
              // color: Colors.blue,
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
          ListItem(
            "Login Page",
            const LoginPage(),
          ), //Login page should have the text added to lang
          ListItem(lang.getSettingsText!, const SettingsPage())
        ],
      ),
    );
  }
}
