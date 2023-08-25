import 'package:flutter/material.dart';
import 'package:smartmealai/routes.dart';
import 'package:smartmealai/theme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      theme: appTheme
    );
  }
}
