import 'package:flutter/material.dart';
//import 'package:ema_app/buttons/button.dart';
import '../main.dart';
import 'package:provider/provider.dart';

class EinstellungenPage extends StatefulWidget {
  const EinstellungenPage({super.key});

  @override
  State<EinstellungenPage> createState() => _EinstellungenPageState();
}

class _EinstellungenPageState extends State<EinstellungenPage> {
  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
      backgroundColor: appColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Einstellungen"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            appColors.darkMode();
          }, child: const Text("Darkmode")),
          ElevatedButton(onPressed: () {
            appColors.brightMode();
          }, child: const Text("Brightmode")),
        ],
      ),
    );
  }
}


