import 'package:flutter/material.dart';

class CollectibleIcon extends StatelessWidget {
  final IconData icon;
  final bool isCollected;
  
  const CollectibleIcon({super.key, required this.icon, this.isCollected = false});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: isCollected ? Colors.yellow : Colors.grey,
    );
  }
}