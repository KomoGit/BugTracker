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
      Row(children: const [
        Padding(
          padding: EdgeInsets.all(15),
        ),
        DashboardCards(
            40,
            Center(
              child: Text("LeBron Jaymes"),
            )),
        // Container(
        //   decoration: (BoxDecoration(
        //       shape: BoxShape.rectangle,
        //       color: Colors.white,
        //       border: Border.all(width: 50, color: Colors.white),
        //       borderRadius: const BorderRadius.all(Radius.circular(5)))),
        //   child: const Center(
        //     child: Text("LeBron James"),
        //   ),
        // ),
      ]),
    ]);
  }
}
