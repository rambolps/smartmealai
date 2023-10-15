import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 19, 20, 1),
        centerTitle: true,
        title: Text(
          "Log In",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.notoSans(fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 200),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(51, 54, 63, 1.0)
                  ),
                  cursorColor: Color.fromRGBO(51, 54, 63, 1.0),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Color.fromRGBO(51, 54, 63, 1.0),
                    filled: true,
                    hintText: "Enter your e-mail here",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(137, 141, 158, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(51, 54, 63, 1.0)
                  ),
                  cursorColor: Color.fromRGBO(51, 54, 63, 1.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Color.fromRGBO(51, 54, 63, 1.0),
                    filled: true,
                    hintText: "Enter your password here",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(137, 141, 158, 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text("Forgot your password?"),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: FloatingActionButton.extended(
                label: const Text("Let's Start",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                icon: const Icon(Icons.arrow_forward),
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
              )),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(),
          Row(
            children: [
              FloatingActionButton(onPressed: () {}),
              FloatingActionButton(onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
