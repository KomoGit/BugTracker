import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/UI/ui_cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  /*const*/ HomePage({super.key});
  LangSelect lang = LangSelect();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(padding: EdgeInsets.all(15)),
      Row(children: [
        const Padding(padding: EdgeInsets.all(15)),
        Text(
          lang.getDashboardText!,
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
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
            const Padding(padding: EdgeInsets.all(10)),
            DashboardCards(40, Text(lang.getDummyText!)),
          ],
        ),
      ),
    ]);
  }
}
