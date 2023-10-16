import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFrag extends StatelessWidget {
  const HomeFrag({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Text("Good Morning",
          style: GoogleFonts.notoSans(fontSize: 34),
        ),

        Text("Let's Achieve Your Objectives!",
          style: GoogleFonts.notoSans(fontSize: 18),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text("Caloric Intake"),
                Container(
                  width: 165,
                  height: 175,
                  color: const Color.fromRGBO(25,9,51,1),
                )
              ],
            ),
            Column(
              children: [
                const Text("Macro Intake"),
                Container(
                  width: 165,
                  height: 175,
                  color: const Color.fromRGBO(25,9,51,1),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 50),
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
            const Spacer(flex: 1),
          ],
        ),
        const Spacer(flex: 4,),
      ],
    );
  }
}
