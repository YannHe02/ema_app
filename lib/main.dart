import 'package:flutter/material.dart';
import 'pages/start.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppColors(),
      child: const MyApp(),
    ),
  );
}

class AppColors extends ChangeNotifier {
  Color _backgroundColor = Colors.white70;
  Color _buttonColor = Colors.blueAccent;

  Color get backgroundColor => _backgroundColor;
  Color get buttonColor => _buttonColor;

  void darkMode() {
    _backgroundColor = Colors.black54;
    _buttonColor = Colors.blue;
    notifyListeners();
  }
  void brightMode() {
    _backgroundColor = Colors.white70;
    _buttonColor = Colors.blueAccent;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}

