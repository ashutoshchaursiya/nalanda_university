import 'package:nalanda_university/Screen/home_screen.dart';
import 'package:nalanda_university/input_card.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  // List<String> details = [];
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _password = TextEditingController();

  RegistrationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double _height = size.height;
    double _width = size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //     child: Text('Registration'),
      //   ),
      // ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        color: Colors.white,
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Image.asset("assets/images/nd1.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFFB71C1C),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextInputCard(
                  child: TextFormField(
                    controller: _fullName,
                    decoration: const InputDecoration(
                      label: Text('Fullname'),
                    ),
                  ),
                ),
                SizedBox(
                  height: _height * 0.01,
                ),
                TextInputCard(
                  child: TextFormField(
                    controller: _userName,
                    decoration: const InputDecoration(
                      label: Text('User Name'),
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: _height * 0.01,
                ),
                TextInputCard(
                  child: TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        label: Text('Email'), suffixIcon: Icon(Icons.email)),
                  ),
                ),
                SizedBox(
                  height: _height * 0.01,
                ),
                TextInputCard(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _mobile,
                    decoration: const InputDecoration(
                      label: Text('Mobile Number'),
                      suffixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                SizedBox(
                  height: _height * 0.01,
                ),
                TextInputCard(
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        label: Text('Password'), suffixIcon: Icon(Icons.lock)),
                    controller: _password,
                  ),
                ),
                SizedBox(
                  height: _height * 0.03,
                ),
                SizedBox(
                  height: 45,
                  width: _width - 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Successfully Registered")));
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
