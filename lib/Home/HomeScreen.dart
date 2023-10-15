import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLayout(),
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        title: const Text(
          'SmartMeal AI',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Food'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text("Good Morning",
        style: GoogleFonts.notoSans(fontSize: 34),
        ),

        Text("Let's Achieve Your Objectives!",
        style: GoogleFonts.notoSans(fontSize: 18),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Caloric Intake"),
                Container(
                  width: 165,
                  height: 175,
                  color: const Color.fromRGBO(25,9,51,1),
                )
              ],
            ),
            Column(
              children: [
                Text("Macro Intake"),
                Container(
                  width: 165,
                  height: 175,
                  color: const Color.fromRGBO(25,9,51,1),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 50),
        const Text("Recommended For You"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 18,
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
        Spacer(flex: 4,),
      ],
    );
  }
}
