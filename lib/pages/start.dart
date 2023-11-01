import 'package:flutter/material.dart';
import '../buttons/button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoToTrainingBtn(),
            GoToStatistikBtn(),
            GoToEinstellungenBtn(),
          ],
        ),
      ),
    );
  }
}