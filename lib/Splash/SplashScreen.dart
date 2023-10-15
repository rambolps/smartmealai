import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const Spacer(flex:2),
              Text(
                "Welcome to\nSmart Meal AI",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                fontSize: 30,
                fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 50,),
              Text(
                "Take control of your own health!",
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                fontSize: 16,
                fontWeight: FontWeight.normal
                ),
              ),
              const Spacer(flex:2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(),
                  Expanded(
                      flex: 4,
                      child: FloatingActionButton.extended(
                        onPressed: () => Navigator.pushNamed(context, '/Login'),
                        label: const Text("Let's Start",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal
                            )),
                        icon: const Icon(Icons.arrow_forward),
                      backgroundColor: Theme.of(context).primaryColor,
                      )
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(flex:1),
            ],
          ),
        ),
    );
  }
}
