import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:bugtracker/Debug/d_log.dart';
import 'package:bugtracker/Localization/lang_current.dart';
import 'package:bugtracker/Logic/Backend/pocketbase.dart';
import 'package:bugtracker/Logic/utility.dart';
import 'package:bugtracker/Views/Screens/ui_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//TODO: Ensure controller gets cleaned after login is done, and if the fields are empty user should be notified.
//TODO: Ensure the localization is added.
//TODO: Remove debugOut()s once they are no longer needed.

UtilityMethods _utility = UtilityMethods();
BackendLogic _backendLogic = BackendLogic();
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/login_background.jpeg"),
                    fit: BoxFit.cover)),
            child: const LoginUserInput()));
  }
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
                    CurrentStrings.currentLoginHeader!,
                    style: GoogleFonts.bebasNeue(
                        color: Colors.white, fontSize: 24, letterSpacing: 2),
                  ),
                  TextField(
                    controller: _emailController,
                    style: GoogleFonts.montserrat(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle:
                          const TextStyle(fontSize: 17, color: Colors.white),
                      hintText: CurrentStrings.currentEmailInputField,
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                  TextField(
                    controller: _passController,
                    style: GoogleFonts.montserrat(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          const TextStyle(fontSize: 17, color: Colors.white),
                      hintText: CurrentStrings.currentPasswordInputField,
                      suffixIcon: const Icon(Icons.lock_open_outlined,
                          color: Colors.white),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_utility.inputIsEmpty(_emailController)) {
                        debugOut("Email is empty");
                      } else if (_utility.inputIsEmpty(_passController)) {
                        debugOut("Password is empty");
                      } else {
                        if (await _backendLogic.checkConnectionToBackend()) {
                          debugOut(_emailController.text);
                          debugOut(_passController.text);
                        } else {
                          debugOut("Connection could not be achieved.");
                        }
                      }
                    },
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ))),
                    child: Text(CurrentStrings.currentLoginButtonText!),
                  ),
                  TextButton(
                    onPressed: () {
                      //TODO: Once register form is created, ensure that this button sends user to that page.
                      debugOut("Register button clicked");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const MyApp())));
                    },
                    child: Text.rich(
                      TextSpan(
                        text: CurrentStrings.currentRegisterTextButtonFirst,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: CurrentStrings
                                  .currentRegisterTextButtonSecond,
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              )),
                          // can add more TextSpans here...
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
