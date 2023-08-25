import 'package:smartmealai/Login/LoginScreen.dart';
import 'package:smartmealai/Splash/SplashScreen.dart';

var appRoutes = {
  '/': (context) => const SplashScreen(),
  '/login': (context) => const LoginScreen(),
};