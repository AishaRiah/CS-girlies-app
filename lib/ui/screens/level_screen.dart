import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class LevelScreen extends StatelessWidget {
  static const routeName = '/level';
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Level')),
      body: Row(
        children: [
          Expanded(flex: 2, child: const _MazeArea()),
          Expanded(child: const _NeuralPanel()),
        ],
      ),
    );
  }
}

class _MazeArea extends StatelessWidget {
  const _MazeArea();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text('Maze UI Shell', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class _NeuralPanel extends StatelessWidget {
  const _NeuralPanel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Neuron Core', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const Text('Nodes light up as you collect data', style: TextStyle(fontSize: 12)),
          const SizedBox(height: 24),
          Center(
            child: Column(children: [
              _nodeRow(3), 
              const SizedBox(height: 16), 
              _nodeRow(2), 
              const SizedBox(height: 16), 
              _nodeRow(1),
            ]),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const QuizScreen())),
            child: const Text('Go to Quiz'),
          ),
        ],
      ),
    );
  }

  Widget _nodeRow(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade700,
            border: Border.all(color: Colors.cyanAccent),
          ),
        );
      }),
    );
  }
}