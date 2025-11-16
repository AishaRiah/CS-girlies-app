import 'package:flutter/material.dart';

class NeuralNode extends StatelessWidget {
  final bool isActive;
  
  const NeuralNode({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.cyan : Colors.grey,
      ),
    );
  }
}