import 'package:bugtracker/UI/Widgets/ui_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PersistentAppbar(),
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
            child: Text(
          "Please Login",
          style: GoogleFonts.bebasNeue(fontSize: 36),
        )),
      ),
    );
  }
}
