import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smartmealai/Home/Pages/foodfrag.dart';
import 'package:smartmealai/Home/Pages/homefrag.dart';
import 'package:smartmealai/Home/Pages/settingsfrag.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _frags = [
    HomeFrag(),
    FoodFrag(),
    SettingsFrag(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _frags[_selectedIndex],
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        title: const Text(
          'SmartMeal AI',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
          color: Colors.white,
          haptic: true,
          activeColor: Theme.of(context).primaryColor,
          onTabChange: _navigateBottomBar,
          gap: 8,
          tabs: const [
            GButton(
                icon: Icons.home,
                text: 'Home',
            ),
            GButton(
              icon: Icons.restaurant,
              text: 'Food',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ]

      ),
    );
  }
}

