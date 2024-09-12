import 'package:flutter/material.dart';
import 'package:igui/screens/bottom_nav_bar.dart';
import 'package:igui/screens/first_screen.dart';
import 'package:igui/screens/login_screen.dart';
import 'package:igui/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false ,  brightness: Brightness.light),
      home: LoginScreen(),
    );
  }
}

