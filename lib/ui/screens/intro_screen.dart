import 'package:flutter/material.dart';
import 'story_screen.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/';
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('War on Core', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const StoryScreen())),
              child: const Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}