import 'package:flutter/material.dart';
import 'package:ema_app/buttons/button.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Training"),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Wrap(
            spacing: 50,
            runSpacing: 50,
            children: [
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen(),
              GoToKopfrechnen()
              ]
          ),
        ),
      ),
    );
  }
}