import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app.
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
  Color _schriftColor1 = Colors.black87;


  Color get backgroundColor => _backgroundColor;
  Color get buttonColor => _buttonColor;
  Color get schriftColor1 => _schriftColor1;

  void darkMode() {
    _backgroundColor = Colors.black87;
    _buttonColor = Colors.blue;
    _schriftColor1 = Colors.white70;
    notifyListeners();
  }
  void brightMode() {
    _backgroundColor = Colors.white70;
    _buttonColor = Colors.blueAccent;
    _schriftColor1 = Colors.black87;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}

