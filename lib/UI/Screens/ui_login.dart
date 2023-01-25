import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const PersistentAppbar(),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Text(
              "Test",
              style: GoogleFonts.bebasNeue(fontSize: 46),
            ),
          ]),
        ),
      ),
    );
  }
}
