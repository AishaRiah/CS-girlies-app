import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  const UIButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}