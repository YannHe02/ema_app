import 'package:flutter/material.dart';
//import 'package:ema_app/buttons/button.dart';


class EinstellungenPage extends StatefulWidget {
  const EinstellungenPage({super.key});

  @override
  State<EinstellungenPage> createState() => _EinstellungenPageState();
}

class _EinstellungenPageState extends State<EinstellungenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Einstellungen"),
      ),
    );
  }
}


