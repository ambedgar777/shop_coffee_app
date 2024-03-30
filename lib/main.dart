import 'package:coffee_app/screens/intro_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color(0xFF191D20),
          primary: Color(0xFF272A2F),
          secondary: Color(0xFFAA5D26),
          onSecondary: Colors.white,
          tertiary: Colors.grey,
          onTertiary: Color(0xFFD47946)
        ),
      ),
      home: IntroScreen(),
    );
  }
}
