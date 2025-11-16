import 'package:flutter/material.dart';


class QuizScreen extends StatelessWidget {
static const routeName = '/quiz';


const QuizScreen({super.key});


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Mission Debrief')),
body: const Center(
child: Text('Quiz Coming Soon', style: TextStyle(fontSize: 24)),
),
);
}
}