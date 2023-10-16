import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: _selectedIndex,
        backgroundColor: const Color.fromRGBO(9, 11, 12, 1.0),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(2, 118, 248, 1.0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Food'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

