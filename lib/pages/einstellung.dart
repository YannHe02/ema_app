import 'package:flutter/material.dart';
import 'package:ema_app/buttons/button.dart';


class EinstellungenPage extends StatefulWidget {
  const EinstellungenPage({super.key});

  @override
  State<EinstellungenPage> createState() => _EinstellungenPageState();
}

class _EinstellungenPageState extends State<EinstellungenPage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: GoBackBtn(),
    );
  }
}


