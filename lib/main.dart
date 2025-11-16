import 'package:flutter/material.dart';
import 'ui/screens/intro_screen.dart';

void main() {
  runApp(const WarOnCoreApp());
}

class WarOnCoreApp extends StatelessWidget {
  const WarOnCoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'War on Core',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const IntroScreen(),
    );
  }
}