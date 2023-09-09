import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 19, 20, 1),
        centerTitle: true,
        title: Text(
          "Login Test",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSans(
              fontSize: 18,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      backgroundColor: Colors.black,


    );
  }
}
