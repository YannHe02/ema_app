import 'package:flutter/material.dart';
//import 'package:ema_app/buttons/button.dart';

class StatistikPage extends StatefulWidget {
  const StatistikPage({super.key});

  @override
  State<StatistikPage> createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Statistik"),
      ),
    );
  }
}

