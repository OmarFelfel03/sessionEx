import 'package:flutter/material.dart';
import 'package:task10/forgot_screen.dart';
import 'package:task10/login_screen.dart';
import 'package:task10/navigation_screen.dart';
import 'package:task10/register_screen.dart';
import 'package:task10/screens/cart_screen.dart';
import 'package:task10/screens/favorites_screen.dart';
import 'package:task10/screens/home_screen.dart';
import 'package:task10/screens/profile_screen.dart';
import 'package:task10/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        '/': (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        NavigationScreen.id: (context) => NavigationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CartScreen.id: (context) => CartScreen(),
        FavoritesScreen.id: (context) => FavoritesScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ForgotScreen.id: (context) => ForgotScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'task10',
    );
  }
}
