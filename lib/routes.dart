import 'package:smartmealai/Home/HomeScreen.dart';
import 'package:smartmealai/Login/LoginScreen.dart';
import 'package:smartmealai/Splash/SplashScreen.dart';

var appRoutes = {
  '/': (context) => const SplashScreen(),
  '/Login': (context) => const LoginScreen(),
  '/Home': (context) => const HomeScreen(),
};