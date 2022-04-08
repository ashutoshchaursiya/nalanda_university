import 'package:nalanda_university/Screen/forgot_pasword_screen.dart';
import 'package:nalanda_university/Screen/registration_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'home_screen.dart';
import '../input_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              // color: Colors.black,
            ),
            Image.asset("assets/images/nd1.png"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFB71C1C),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                  child: Column(
                children: [
                  TextInputCard(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextInputCard(
                      child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                  )),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: width - 50,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                          // primary: Colors.white,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Forgotpassword_page(),
                            ));
                          },
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFB71C1C),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account.?",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RegistrationPage(),
                            ));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFB71C1C),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
