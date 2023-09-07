import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar:AppBar(
        title: const Text('Nav Bar', textAlign: TextAlign.center,),
        centerTitle: true,


      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'settings'


        )
      ],



      ),
    );
  }
}
