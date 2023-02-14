import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bugtracker/Views/Widgets/ui_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/1379636/pexels-photo-1379636.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:
            const PersistentAppbar(), //Remove this after login screen is created.
        body: Center(
          child: BlurryContainer.square(
            blur: 5,
            child: SizedBox(
                width: 500,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Hello World",
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 24),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
