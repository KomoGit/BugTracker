import 'package:bugtracker/UI/ui_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(padding: EdgeInsets.all(15)),
      Row(children: [
        const Padding(padding: EdgeInsets.all(15)),
        Text(
          "Dashboard",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 24), //change the text color.
        ),
      ]),
      const Padding(padding: EdgeInsets.all(10)),
      SizedBox(
        width: double.infinity,
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
            Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text("LeBron Jaymezz")),
          ],
        ),
      ),
    ]);
  }
}
