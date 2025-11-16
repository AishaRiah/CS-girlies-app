import 'package:flutter/material.dart';

class EchoSpeechBubble extends StatelessWidget {
  final String text;
  
  const EchoSpeechBubble({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text),
    );
  }
}