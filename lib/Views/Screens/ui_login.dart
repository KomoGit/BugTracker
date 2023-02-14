import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bugtracker/Debug/d_log.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: Ensure controller gets cleaned after login is done, and if the fields are empty user should be notified.
//TODO: Ensure the localization is added.
List<TextEditingController> _controller =
    List.generate(2, (i) => TextEditingController());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/login_background.jpeg"),
                fit: BoxFit.cover)),
        child: const LoginUserInput());
  }
}

bool inputEmpty(List<TextEditingController> controller) {
  if (controller.isEmpty) {
    return true;
  }
  return false;
}

class LoginUserInput extends StatefulWidget {
  const LoginUserInput({super.key});

  @override
  State<LoginUserInput> createState() => _LoginUserInputState();
}

class _LoginUserInputState extends State<LoginUserInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: BlurryContainer.square(
          blur: 5,
          child: SizedBox(
              width: 350,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Please Login",
                    style: GoogleFonts.bebasNeue(
                        color: Colors.white, fontSize: 24, letterSpacing: 2),
                  ),
                  TextField(
                    controller: _controller[0],
                    style: GoogleFonts.montserrat(color: Colors.white),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                      hintText: 'Your Email',
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  TextField(
                    controller: _controller[1],
                    style: GoogleFonts.montserrat(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(fontSize: 17, color: Colors.white),
                      hintText: 'Your Password',
                      suffixIcon:
                          Icon(Icons.lock_open_outlined, color: Colors.white),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (inputEmpty(_controller)) {
                        debugOut("The shit is blank!");
                      } else {
                        debugOut(_controller[0].text);
                        debugOut(_controller[1].text);
                        _controller.clear();
                      }
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ))),
                    child: const Text("Login"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text.rich(
                      TextSpan(
                        text: 'Not a member? ',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'click here to register',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              )),
                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
