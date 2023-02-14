import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<TextEditingController> _controller =
    List.generate(2, (i) => TextEditingController());

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
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStatePropertyAll(RoundedRectangleBorder(
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
      ),
    );
  }
}
