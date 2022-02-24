import 'package:app_calculator/constants.dart';
import 'package:app_calculator/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: cPrimary,
            error: cDanger,
            secondary: cSecondary,
            background: cBackground),
      ),
      home: const HomeScreen(),
    );
  }
}
