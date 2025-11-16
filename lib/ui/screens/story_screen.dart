import 'package:flutter/material.dart';
import 'level_screen.dart';

class StoryScreen extends StatelessWidget {
  static const routeName = '/story';
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const CircleAvatar(radius: 40, child: Text('E')),
              const SizedBox(height: 16),
              const Text('Echo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const Text(
                '"I\'m Echo. Core erased me… almost. I sent a fragment of myself back in time, and you found me. '
                'We\'re inside their servers now. Let\'s build a better AI before they detect us."',
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LevelScreen())),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Enter Core System'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}