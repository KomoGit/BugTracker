import 'package:bugtracker/UI/Widgets/ui_appbar.dart';
import 'package:bugtracker/UI/Widgets/ui_cards.dart';
import 'package:bugtracker/UI/Widgets/ui_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PersistentAppbar(),
      drawer: const PersistentDrawer(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(15)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.all(15)),
                Center(
                  child: Text(
                    lang.getSettingsText!,
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontSize: 24),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Padding(padding: EdgeInsets.all(10)),
                  DashboardCards(
                      200, Center(child: Text(lang.getUserGreetText!))),
                  const Padding(padding: EdgeInsets.all(10)),
                  DashboardCards(
                      200, Center(child: Text(lang.getUserGreetText!))),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(padding: EdgeInsets.all(10)),
                  const Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
