import 'package:flutter/material.dart';

class KopfMain extends StatelessWidget {
  const KopfMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Kopfrechnen"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => print("tapped"),
        child: const KopfInGame(),
      ),
    );
  }
}

class KopfInGame extends StatelessWidget {
  const KopfInGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,

    );
  }
}
